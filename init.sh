#!/bin/bash

git submodule init
git submodule update

stow -S git
stow -S tmux
stow -S vim
stow -S zsh
stow -S hypr
stow -S waybar
