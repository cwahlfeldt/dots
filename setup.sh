#!/bin/bash

cd ~/

xcode-select --install

curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh

brew install \
    fnm \
    curl \
    composer \
    exa \
    zsh \
    ripgrep \
    powerlevel10k \
    php \
    neovim \
    lua \
    fzf \
    drud/ddev/ddev \
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
