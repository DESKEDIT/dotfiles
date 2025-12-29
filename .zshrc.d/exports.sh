# for Kitty to use zsh as the shell
export SHELL='/usr/bin/zsh'

# make Qt use GTK theme
export QT_QPA_PLATFORMTHEME='gtk3'

# preferred editor
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi
