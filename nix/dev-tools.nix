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
    pinentry-curses
    bat
    thefuck
    ripgrep
    fzf
    nerdfonts
    nodejs
    git-standup
  ];


  services.pcscd.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    withPython3 = true;
    withNodeJs = true;
    defaultEditor = true;
    configure = {
      customRC = ''
        function! SourceIfExists(file)
          if filereadable(expand(a:file))
            exe 'source' a:file
          endif
        endfunction
        call SourceIfExists("~/.config/nvim/init.vim")
      '';
    };
  };
}
