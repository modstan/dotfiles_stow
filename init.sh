#!/bin/bash

git submodule init
git submodule update

stow -R git
stow -R tmux
stow -R nvim
stow -R zsh
stow -R smartcat
stow -R devtools
#stow -S hypr
#stow -S waybar
stow -R ashell
stow -R term
