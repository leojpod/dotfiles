{ config, pkgs, ... }:

let 
  stable = import <nixos-stable> {config.allowUnfree = true;};
in
{
  nixpkgs.overlays = [
    (final: prev: {
      nerdfonts = stable.pkgs.nerdfonts;
      slack = stable.pkgs.slack;
      # kitty = stable.pkgs.kitty;
      # dropbox = stable.pkgs.dropbox;
    })
  ];
}
