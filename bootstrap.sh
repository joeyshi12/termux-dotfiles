#!/bin/bash

DOTFILES_DIR=~/.dotfiles

# Create links
dotfiles=(
    ".config/nvim"
    ".config/lf"
    ".config/tmux"
    ".config/sqlite3"
    ".config/pylintrc"
    ".config/ripgrep"
    ".zprofile"
    ".zshrc"
)

for file in "${dotfiles[@]}"; do
    ln -sfn "${DOTFILES_DIR}/${file}" "${HOME}/$file"
done
