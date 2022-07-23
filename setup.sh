#!/bin/bash

cd ~/

defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 1

xcode-select --install

curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh

brew install \
    fnm \
    curl \
    composer \
    exa \
    zsh \
    ripgrep \
    php \
    neovim \
    fzf \
    drud/ddev/ddev \
    koekeishiya/formulae/yabai \
    bat \
    ncdu \
    nethack \
    terminus \
    tig \
    git \
    lastpass-cli \
    tree-sitter \
    sqlite \
    zsh-autosuggestions \
    pfetch \
    neofetch \
    zsh-history-substring-search

brew install --cask \
    font-fira-code-nerd-font \
    kitty \
    docker \
    google-chrome \
    slack \
    qbittorent \
    vlc \
    zoom \
    discord \
    pop \
    ngrok \
    firefox-developer-edition \
    postman \
    phpstorm \
    webstorm \
    microsoft-teams

chsh -s $(which zsh)

zsh

source ~/.zshrc

nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

fnm install --lts
npm i -g npm serve prettier eslint

# post nstall steps
# 1. setup phpstorm and webstorm
# 2. import all passwords to both firefox and google-chrome
# 3. add ssh keys
# 4. fire up docker
# 5. log into palantir shit
# 6. pull down work repos and set them up in docker
