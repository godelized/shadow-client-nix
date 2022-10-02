{pkgs ? import <nixpkgs> {}}: let
  linux = import ./linux.nix;
  mac = import ./mac.nix;
  build = import ./build.nix {inherit (pkgs) fetchurl;};
in
  build.linux {inherit (pkgs) appimageTools;} linux.ubuntu_18-04.prod
