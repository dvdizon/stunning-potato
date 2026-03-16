pinfo "Configuring Shell"

pnotice "Setting default shell to zsh"
chsh -s /bin/zsh

pnotice "Configuring Starship prompt"
mkdir -p ~/.config
if [ ! -f ~/.config/starship.toml ]; then
    starship preset plain-text -o ~/.config/starship.toml
fi

pnotice "Adding Starship init to ~/.zshrc"
if ! grep -q 'starship init zsh' ~/.zshrc 2>/dev/null; then
    echo '' >> ~/.zshrc
    echo '# Starship prompt' >> ~/.zshrc
    echo 'eval "$(starship init zsh)"' >> ~/.zshrc
fi
