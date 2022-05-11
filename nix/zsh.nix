{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    zsh
    zsh-nix-shell
    zsh-completions
  ];

  programs.zsh = {
    enable = true;
    ohMyZsh = {
      enable = true;
      theme = "kolo";
      plugins = [
        "aws"
        "git"
        "docker"
        "mix"
        "history-substring-search"
      ];
    };
    setOptions = [
      "HIST_IGNORE_ALL_DUPS"
      "HIST_FIND_NO_DUPS"
      "magic_equal_subst"
    ];
  };

  users.defaultUserShell = pkgs.zsh;
}

