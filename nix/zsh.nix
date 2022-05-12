{ config, pkgs, ... }:

let 
  initExtraBeforeCompInit = ''
        export ZSH_CUSTOM=$HOME/.config/oh-my-zsh

        '';
  initExtra = ''
        source $ZSH_CUSTOM/plugins/nix-shell/nix-shell.plugin.zsh

        export KEYTIMEOUT=10 # reduce the timeout to switch between modes

        bindkey '^[[A' history-substring-search-up
        bindkey '^[[B' history-substring-search-down
        bindkey -M vicmd 'k' history-substring-search-up
        bindkey -M vicmd 'j' history-substring-search-down
        bindkey -M vicmd '^[[A' history-substring-search-up
        bindkey -M vicmd '^[[B' history-substring-search-down
        bindkey -M viins '^[[A' history-substring-search-up
        bindkey -M viins '^[[B' history-substring-search-down
        bindkey -M viins 'jk' vi-cmd-mode
        bindkey -M viins 'kj' vi-cmd-mode

        # ZSH in vi mode
        bindkey -v

        function zle-line-init zle-keymap-select {
          if [ $KEYMAP = vicmd ]; then
              # the command mode for vi
              echo -ne "\e[2 q"
          else
              # the insert mode for vi
              echo -ne "\e[5 q"
          fi
        }
        zle -N zle-line-init
        zle -N zle-keymap-select

        eval $(thefuck --alias)
        eval $(thefuck --alias fk)      # a simpler nicer way of swearing
        eval $(thefuck --alias crap)    # more ways of swearing ...
        eval $(thefuck --alias shit)
        eval $(thefuck --alias oh-bum)
        eval $(thefuck --alias oh-bums)

        function who-is-using-this-damn-port() {
          lsof -i :$1;
        }

        alias gcd='gco dev'   # for when the default git branch is dev

        export EDITOR=nvim

        [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

        # nice stuff for clojure
        export PATH="$PATH:$HOME/.vim/plugged/vim-iced/bin"

        # load a custom file for setting up secrets: 
        source ~/.secrets.sh

        # quick customization of the bat tool
        export BAT_THEME="OneHalfLight"

        compinit
        # Completion for kitty
        kitty + complete setup zsh | source /dev/stdin

        # better autocomplete for MAKEFILEs
        zstyle ':completion:*:*:make:*' tag-order 'targets'

        # quick CLI utility: 
        source ~/.scripts/confirm.sh

        alias night-shift='export DAY_NIGHT="NIGHT"; kitty @set-colors ''${KITTY_CONFIG_DIRECTORY:-~/.config/kitty}/night-colors.conf'
        alias day-shift='export DAY_NIGHT="DAY"; kitty @set-colors ''${KITTY_CONFIG_DIRECTORY:-~/.config/kitty}/day-colors.conf'
        '';
in
{
  environment.systemPackages = with pkgs; [
    zsh
    zsh-completions
    direnv
    nix-direnv
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
    promptInit = initExtraBeforeCompInit + initExtra;
  };

  home-manager.users.leojpod.programs = {
    direnv = {
      enable = true;
      config = {
        load_dotenv = false;
        strict_env = true;
      };
      nix-direnv.enable = true;
    };
    zsh = {
      enable = true;
      initExtraBeforeCompInit = initExtraBeforeCompInit;
      initExtra =  initExtra;
    };
  };

  users.defaultUserShell = pkgs.zsh;
}

