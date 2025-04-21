#!/usr/bin/env bash

# Apagar portátil y configurar disposición
xrandr \
  --output eDP-1 --off \
  --output DP-1-3-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal \
  --output DP-1-1         --mode 1920x1080 --pos 1920x0 --rotate normal
# Asignar escritorios si los nombres coinciden
bspc monitor DP-1-3-1 -d I II III IV V
bspc monitor DP-1-1   -d VI VII VIII IX X

bspc config remove_disabled_monitors true
bspc config remove_unplugged_monitors true

bspc wm -r      
