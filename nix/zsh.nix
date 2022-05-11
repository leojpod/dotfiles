{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    ohMyZsh = {
      enable = true;
      theme = "kolo";
      plugins = [
        "aws"
        "git"
        "docker"
        "elixir"
        "mix"
        "history-substring-search"
        "nix-shell"
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

