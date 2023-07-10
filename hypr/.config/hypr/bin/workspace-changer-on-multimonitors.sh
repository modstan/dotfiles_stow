#!/bin/bash

moncount=$(hyprctl monitors | grep ^Monitor | wc -l)

if [ $moncount -eq 1 ]; then
  hyprctl dispatch workspace $1
  exit
fi

active=$(hyprctl activeworkspace  | head -n1 | cut -d " " -f 7 | cut -d ":" -f 1)
if [ "$active" == "eDP-1" ]; then
  hyprctl dispatch workspace $(($1+5))
else
  hyprctl dispatch workspace $1
fi
