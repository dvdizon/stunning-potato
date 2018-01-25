pinfo "Installing Oh-My-ZSH"
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
#chsh -s /bin/zsh

pinfo "Installing oh-my-fish"
curl -L https://get.oh-my.fish > install
fish install --path=~/.local/share/omf --config=~/.config/omf
