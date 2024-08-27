#!/bin/sh

handle() {
  echo "|$@|" >> /tmp/soclistener.log
  case $1 in monitoradded*)
    ~/.config/hypr/bin/move-workspace.sh
    killall -SIGUSR2 waybar 
  esac
}

socat - "UNIX-CONNECT:/tmp/hypr/${HYPRLAND_INSTANCE_SIGNATURE}/.socket2.sock" | while read -r line; do handle "$line"; done

