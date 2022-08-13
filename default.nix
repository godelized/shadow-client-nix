{
  pkgs ? import <nixpkgs> {},
}:

let 
  linux = import ./linux.nix;
  build = import ./build.nix { inherit (pkgs) fetchurl; };
in
build.linux { inherit (pkgs) appimageTools; } linux.prod
