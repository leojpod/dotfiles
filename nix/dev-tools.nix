{ config, pkgs, ... }:

{
  imports =
    [ ./tmux.nix
      ./zsh.nix
    ];

  # TODO move some stuff like node over to the home-manager config rather than the general one. 

  # tools and apps
  environment.systemPackages = with pkgs; [
    git
    cpustat
    kitty
    pinentry
    pinentry-curses
    bat
    thefuck
    ripgrep
    fzf
    nerdfonts
    nodejs
    python
    python3
    git-standup
    elmPackages.elm-language-server
  ];

  # required for some plugin on neovim
  home-manager.users.leojpod.programs.java = {
    enable = true;
    package = pkgs.jdk;
  };

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
