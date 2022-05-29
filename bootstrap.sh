#!/bin/bash

DOTFILES_DIR=~/.dotfiles

# Create links
dotfiles=(
    ".config/nvim"
    ".config/ranger"
    ".config/tmux"
    ".config/sqlite3"
    ".config/conda"
    ".config/pylintrc"
    ".config/ripgrep"
    ".zprofile"
    ".zshrc"
)

for file in "${dotfiles[@]}"; do
    ln -sfn "${DOTFILES_DIR}/${file}" "${HOME}/$file"
done
