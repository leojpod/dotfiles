{ config, pkgs, ... }:

{
  imports = 
    [ ./tmux.nix
      ./zsh.nix
    ];
  # tools and apps
  environment.systemPackages = with pkgs; [
    git
    kitty
    zsh
    zsh-completions
    pinentry
    bat
    thefuck
    ripgrep
    fzf
  ];
}
