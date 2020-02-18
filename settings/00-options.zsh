#{{{ Options

# Correct commands.
setopt CORRECT

# in order to use #, ~ and ^ for filename generation grep word
# *~(*.gz|*.bz|*.bz2|*.zip|*.Z) -> searches for word not in compressed files
# don't forget to quote '^', '~' and '#'!
setopt extended_glob

# if a command is issued that can't be executed as a normal command, and the
# command is the name of a directory, perform the cd command to that directory.
setopt auto_cd

# display PID when suspending processes as well
setopt long_list_jobs

# report the status of backgrounds jobs immediately
setopt notify

# whenever a command completion is attempted, make sure the entire command path
# is hashed first.
setopt hash_list_all

# not just at the end
setopt complete_in_word

# Don't send SIGHUP to background processes when the shell exits.
setopt no_hup

# avoid "beep"ing
setopt no_beep

# * shouldn't match dotfiles. ever.
setopt no_glob_dots

# use zsh style word splitting
setopt no_sh_word_split

# don't error out when unset parameters are used
setopt unset
#}}}
