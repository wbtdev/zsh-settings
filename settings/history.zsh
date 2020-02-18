#{{{ History settings
HISTSIZE=100000
SAVEHIST=100000
HISTFILE="$HOME/.zsh_history"
setopt append_history         # append history instead of replacing
setopt hist_ignore_all_dups   # ignore duplication command history list
setopt hist_ignore_space      # ignore commands that start with a space
setopt hist_verify            # don't execute command from history directly but edit it first
setopt share_history          # share history between simultaneously running shells
#}}}
