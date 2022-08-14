#!/usr/bin/env bash

PREFETCH=1

usage() {
    echo -n "Usage:

$0 [-h] [-n] SYSTEM SUBSYSTEM CHANNEL
    -h) Show this help.
    -n) No prefetch, only show package expression.

SYSTEMs and SUBSYSTEMs:
    - linux:
        - ubuntu_18.04
    - mac:
        - x64
        - arm64

CHANNELs:
    - prod
    - preprod
    - testing
"
}

while getopts 'hn' flag; do
case "$flag" in
    h)
        usage
        exit 0
        ;;
    n)
        PREFETCH=0
        ;;
    \?)
        usage
        exit 1
        ;;
esac
done

shift $((OPTIND - 1))
if [ $# -ne 3 ]; then
    usage
    exit 1
fi

SYSTEM="$1"
SUBSYSTEM="$2"
CHANNEL="${3:-prod}"

! read -d '' ARGS <<EOF
{
    inherit (import <nixos> {}) fetchurl runCommandLocal yq;
    system = "$SYSTEM";
    subSystem = "$SUBSYSTEM";
    channel = "$CHANNEL";
}
EOF

nixSet=$(\
    nix eval \
    --extra-experimental-features nix-command \
    --impure \
    --expr "import ./prefetch-shadow.nix $ARGS" \
)

if [ $PREFETCH -eq 1 ]; then
    digest="$(nix eval --extra-experimental-features nix-command --raw --expr "$nixSet.hash")"
    url="$(nix eval --extra-experimental-features nix-command --raw --expr "$nixSet.url")"
    nix-prefetch-url "$url" "$digest" --type 'sha512'
fi

# TODO: format the set.
echo "$nixSet"
