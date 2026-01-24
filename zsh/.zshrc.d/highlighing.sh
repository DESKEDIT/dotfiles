source ~/.cache/wal/colors.sh

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main cursor)
typeset -gA ZSH_HIGHLIGHT_STYLES
## General
### Diffs
### Markup
## Classes
## Comments
ZSH_HIGHLIGHT_STYLES[comment]='fg='$color1
## Constants
## Entitites
## Functions/methods
ZSH_HIGHLIGHT_STYLES[alias]='fg='$color2
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg='$color2
ZSH_HIGHLIGHT_STYLES[global-alias]='fg='$color2
ZSH_HIGHLIGHT_STYLES[function]='fg='$color4
ZSH_HIGHLIGHT_STYLES[command]='fg='$color3
ZSH_HIGHLIGHT_STYLES[precommand]='fg='$color6',italic'
ZSH_HIGHLIGHT_STYLES[autodirectory]='fg='$color5',italic'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg='$color7
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg='$color7
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg='$color5
## Keywords
## Built ins
ZSH_HIGHLIGHT_STYLES[builtin]='fg='$color8
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg='$color8
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg='$color8
## Punctuation
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg='$color1
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]='fg='$color2
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-unquoted]='fg='$color2
ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]='fg='$color2
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]='fg='$color5
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg='$color5
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg='$color5
## Serializable / Configuration Languages
## Storage
## Strings
ZSH_HIGHLIGHT_STYLES[command-substitution-quoted]='fg='$color2
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-quoted]='fg='$color2
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg='$color3
ZSH_HIGHLIGHT_STYLES[single-quoted-argument-unclosed]='fg='$color5
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg='$color3
ZSH_HIGHLIGHT_STYLES[double-quoted-argument-unclosed]='fg='$color5
ZSH_HIGHLIGHT_STYLES[rc-quote]='fg='$color3
## Variables
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg='$color2
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument-unclosed]='fg='$color5
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg='$color2
ZSH_HIGHLIGHT_STYLES[assign]='fg='$color2
ZSH_HIGHLIGHT_STYLES[named-fd]='fg='$color2
ZSH_HIGHLIGHT_STYLES[numeric-fd]='fg='$color2
## No category relevant in spec
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg='$color5
ZSH_HIGHLIGHT_STYLES[path]='fg='$color4
ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg='$color2
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg='$color3
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='fg='$color2
ZSH_HIGHLIGHT_STYLES[globbing]='fg='$color2
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg='$color6
#ZSH_HIGHLIGHT_STYLES[command-substitution]='fg=?'
#ZSH_HIGHLIGHT_STYLES[command-substitution-unquoted]='fg=?'
#ZSH_HIGHLIGHT_STYLES[process-substitution]='fg=?'
#ZSH_HIGHLIGHT_STYLES[arithmetic-expansion]='fg=?'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-unclosed]='fg='$color5
ZSH_HIGHLIGHT_STYLES[redirection]='fg='$color3
ZSH_HIGHLIGHT_STYLES[arg0]='fg='$color3
ZSH_HIGHLIGHT_STYLES[default]='fg='$color3
ZSH_HIGHLIGHT_STYLES[cursor]='standout'
