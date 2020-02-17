cp -r ~/.config/nvim ./neovim/ 
cp ~/.zshrc ./zsh/.zshrc
GIT=`which git`
${GIT} add .
DT=$(date +%d.%m.%y-%H:%M:%S)
${GIT} commit -m $DT
${GIT} push origin master -f
