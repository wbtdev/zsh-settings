#{{{ Keybindings
# allow ctrl+a and ctrl+e to move to beginning/end of line
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line

# alt+q to push current line and fetch again on next line
bindkey '\eq' push-line

# show man page of current command with alt+h
bindkey '\eh' run-help

# ctrl+left, ctrl+right to wo to next word
# alt+left, alt+right to wo to next word
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
bindkey '^[[1;3D' backward-word
bindkey '^[[1;3C' forward-word

# allow backspace, alt+backspace, ctrl+backspace, ctrl+w for char and word deletion
# These escape sequences are different depending on your terminal
bindkey '^?' backward-delete-char
bindkey '^[[3~' delete-char

# Shift-Tab to go back in completion menu
zmodload -i zsh/complist  # Needed for keybindings in menucomplete mode, and completion styling
bindkey -M menuselect '^[[Z' reverse-menu-complete

# Gets the nth argument from the last command by pressing Alt+1, Alt+2, ... Alt+5
bindkey -s '\e1' "!:0-0 \t"
bindkey -s '\e2' "!:1-1 \t"
bindkey -s '\e3' "!:2-2 \t"
bindkey -s '\e4' "!:3-3 \t"
bindkey -s '\e5' "!:4-4 \t"

#}}}
