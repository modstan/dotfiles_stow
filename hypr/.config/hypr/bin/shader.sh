#!/bin/bash

hyprshade current | grep -q blue && hyprshade off || hyprshade on ~/.config/hyprshade/shades/blue-light-filter.glsl
