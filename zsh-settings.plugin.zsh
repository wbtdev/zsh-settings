# Copyright (c) 2020 Brad Thorne

# According to the Zsh Plugin Standard:
# http://zdharma.org/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html

0=${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}
0=${${(M)0:#/*}:-$PWD/$0}

# First source our settings files
for zsetting in ${0:h}/settings/*.zsh; do
  source $zsetting
done

# Then ${0:h} to get plugin's directory

fpath+=( "${0:h}/functions" )

# Standard hash for plugins, to not pollute the namespace
typeset -gA Plugins
Plugins[ZSH_SETTINGS_DIR]="${0:h}"

autoload -Uz term_colors reload


