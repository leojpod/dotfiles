{ config, pkgs, ... }:

let 
  stable = import <nixos-stable> {};
in
{
  nixpkgs.overlays = [
    (final: prev: {
      nerdfonts = stable.pkgs.nerdfonts;
      kitty = stable.pkgs.kitty;
      # dropbox = stable.pkgs.dropbox;
    })
  ];
}
