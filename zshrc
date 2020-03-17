# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
export GPG_TTY=$(tty)

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="kolo"
DEFAULT_USER="leojpod"

plugins=(
  git
  docker
  docker-compose
  brew
  history-substring-search
)

source $ZSH/oh-my-zsh.sh

setopt HIST_IGNORE_ALL_DUPS

export KEYTIMEOUT=10 # reduce the timeout to switch between modes

# ignore all duplicated result when searching history
setopt HIST_FIND_NO_DUPS 

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

alias drun='docker run -it --network=host --rm -v $(pwd):/opt/work --workdir=/opt/work'
alias docker-psql='drun postgres:9.5 psql'
function who-is-using-this-damn-port() {
  lsof -i :$1;
}
alias wiutdp='who-is-using-this-damn-port'

if [ -f ~/.config/exercism/exercism_completion.zsh ]; then
  . ~/.config/exercism/exercism_completion.zsh
fi

. $HOME/.asdf/asdf.sh

# source ~/.nix-profile/etc/profile.d/nix.sh

export EDITOR=nvim

export PATH="$PATH:$HOME/.local/bin"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/leojeusset/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/leojeusset/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/leojeusset/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/leojeusset/google-cloud-sdk/completion.zsh.inc'; fi

# rust stuff
export PATH="$PATH:$HOME/.cargo/bin"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# elm completions
source ~/.bash/elm-sh-completion/elm-completion.sh

# load a custom file for setting up secrets: 
source ~/.secrets.sh


# ruby ... 
eval "$(rbenv init -)"

# quick customization of the bat tool
export BAT_THEME="OneHalfLight"
