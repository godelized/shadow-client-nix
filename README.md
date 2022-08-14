# Abstract

This is an attempt of packaging Shadow Cloud Computing clients from [shadow.tech](https://shadow.tech) for Nix.

# Actual state

Right now I only tested the `prod` Linux build and it works on my NixOS install:

```bash
nix-build
result/bin/shadow-client
```

# `prefetch-shadow.sh`

Prefetch a Shadow client without installing and patching it.

```bash
λ. ./prefetch-shadow.sh linux ubuntu_18.04 preprod
path is '/nix/store/0nv176q9a7l9mbl4arwrixkix9x3ffby-ShadowBeta-5.0.1158.AppImage'
18lhky49zc96yifnhk7xykpgy3kr9fdbn3zmpbfs10kzyggp35rzr4mzv2bkvysr2iwnq5bmc9fc2l538sn49mk0iclq0ppnkrvkyy7
{ channel = "preprod"; hash = "sha512-x/u587T3AkxZBLMmYjUahQrmEqurYMujyNrvucT+leSfy7jv+T9B0G7d+oddzaU8h393+n4mtC56k9hPxE9IUQ=="; name = "shadow-client-preprod"; releaseDate = "2022-08-08T15:23:27.679Z"; subSystem = "ubuntu_18.04"; system = "linux"; url = "https://update.shadow.tech/launcher/preprod/linux/ubuntu_18.04/ShadowBeta-5.0.1158.AppImage"; version = "5.0.1158"; }
```

With the option `-n`, the client is not downloaded but only the Nix set is computed.
This is useful to update the `linux.nix` and `mac.nix` declarations of clients.
