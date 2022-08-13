#!/usr/bin/env bash

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

nix eval \
    --extra-experimental-features nix-command \
    --impure \
    --expr "import ./prefetch-shadow.nix $ARGS"
