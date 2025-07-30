{ config, pkgs, ... }:

let
  stable = import <nixos-stable> {config.allowUnfree = true;};
in
{
  nixpkgs.overlays = [
    (final: prev: {
      # python3 = stable.pkgs.python3;
      # rust = stable.pkgs.rust;
      # cargo = stable.pkgs.cargo;
    })
  ];
}
