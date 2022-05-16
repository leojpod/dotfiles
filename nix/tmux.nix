{ config, pkgs, ... }:

{
  # programs.fzf = {
  #   enable = true;
  #   tmux = {
  #     enableShellIntegration = true;
  #     shellIntegrationOptions = [ "-d 35%" ];
  #   };
  # };
  # programs.tmux = {
    # enable = true;
    # clock24 = true;
    # terminal = "screen-256color";
    # plugins = [
      # pkgs.tmuxPlugins.sensible
      # pkgs.tmuxPlugins.resurrect
      # pkgs.tmuxPlugins.continuum
      # pkgs.tmuxPlugins.cpu
      # pkgs.tmuxPlugins.pain-control
      # pkgs.tmuxPlugins.prefix-highlight
      # pkgs.tmuxPlugins.vim-tmux-navigator
    # ];
  # };

  # home manager version
  home-manager.users.leojpod.programs = {
    zfz = {
      enable = true;
      tmux = {
        enableShellIntegration = true;
        shellIntegrationOptions = [ "-d 35%" ];
      };
    };
    tmux = {
      enable = true;
      plugins = [
        pkgs.tmuxPlugins.sensible
        pkgs.tmuxPlugins.cpu
        pkgs.tmuxPlugins.resurrect
        {
          plugin = pkgs.tmuxPlugins.continuum;
          extraConfig = ''
            set -g @continuum-boot 'on'
            set -g @continuum-boot-options 'iterm'
            '';
        }
        pkgs.tmuxPlugins.pain-control
        pkgs.tmuxPlugins.prefix-highlight
        pkgs.tmuxPlugins.vim-tmux-navigator
      ];
      extraConfig = ''
        set -g focus-events on
        set -g mouse on
        
        set -g base-index 1           # start windows numbering at 1
        setw -g pane-base-index 1     # make pane numbering consistent with windows
        
        setw -g automatic-rename off  # rename window to reflect current program
        set -g renumber-windows on    # renumber windows when a window is closed
        
        set -g set-titles off         # set terminal title
        
        set -g display-panes-time 800 # slightly longer pane indicators display time
        set -g display-time 1000      # slightly longer status messages display time
        
        set -g status-interval 10     # redraw status line every 10 seconds
        
        set -g monitor-activity off
        set -g visual-activity off
        

        # add some more shortcut for the window/pane navigation
        
        ## Window managment
        bind-key -n M-Right next-window
        bind-key -n M-Left previous-window
              
        ## Pane managment
         
        ### Motions
        is_vim="ps -o state= -o comm= -t '#{pane_tty}' \
            | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?(view|n?vim?x?)(diff)?$'"
        
        bind-key -n -r S-Left if-shell "$is_vim" 'send-keys S-Left'  'select-pane -L'
        bind-key -n -r S-Right if-shell "$is_vim" 'send-keys S-Right' 'select-pane -R'
        bind-key -n -r S-Up if-shell "$is_vim" 'send-keys S-Up' 'select-pane -U'
        bind-key -n -r S-Down if-shell "$is_vim" 'send-keys S-Down' 'select-pane -D'
        
        ### Resize
        bind-key -n M-S-Left resize-pane -L
        bind-key -r H resize-pane -L
        bind-key -n M-S-Right resize-pane -R
        bind-key -r L resize-pane -R
        bind-key -n M-S-Up resize-pane -U
        bind-key -r K resize-pane -U
        bind-key -n M-S-Down resize-pane -D
        bind-key -r J resize-pane -D



        ## Make current pane more obvious
        set-option -g pane-border-style fg=colour2 #thin green line
        set-option -g pane-active-border-style fg=colour2 #thin green line
        set-option -g pane-active-border-style bg=colour2 #thick green border
        
        set -g status-right '#{prefix_highlight} #{cpu_bg_color} CPU: #{cpu_icon} #{cpu_percentage} | %a %h-%d %H:%M '
      '';
    };
  };
}
