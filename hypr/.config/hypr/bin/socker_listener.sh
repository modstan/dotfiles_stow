#!/bin/sh

handle() {
  echo "|$@|" >> /tmp/soclistener.log
  case $1 in monitoradded*)
    hyprctl dispatch moveworkspacetomonitor "1 1"
    hyprctl dispatch moveworkspacetomonitor "2 1"
    hyprctl dispatch moveworkspacetomonitor "3 1"
    hyprctl dispatch moveworkspacetomonitor "4 1"
    hyprctl dispatch moveworkspacetomonitor "5 1"
    hyprctl dispatch moveworkspacetomonitor "6 0"
    hyprctl dispatch moveworkspacetomonitor "7 0"
    hyprctl dispatch moveworkspacetomonitor "8 0"
    hyprctl dispatch moveworkspacetomonitor "9 0"
    hyprctl dispatch moveworkspacetomonitor "10 0"

  esac
}

socat - "UNIX-CONNECT:/tmp/hypr/${HYPRLAND_INSTANCE_SIGNATURE}/.socket2.sock" | while read -r line; do handle "$line"; done

