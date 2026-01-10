# sourcing oh-my-zsh and scripts
  cd ~/.zshrc.d
# explicitly load exports.sh first
  source exports.sh
  for sourcefile in ./*; do
    source $sourcefile
  done
  cd ..
OH_MY_ZSH_PATH=$HOME/.oh-my-zsh/oh-my-zsh.sh
source $OH_MY_ZSH_PATH
cd $HOME
