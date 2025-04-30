#!/usr/bin/env bash

# Apagar portátil y configurar disposición
xrandr \
  --output DP-2 --primary --mode 1920x1080 --pos 0x0 --rotate normal \
  --output HDMI-0         --mode 1920x1080 --pos 1920x0 --rotate normal
# Asignar escritorios si los nombres coinciden
bspc monitor DP-2 -d I II III IV V VI VII VIII IX X

bspc config remove_disabled_monitors true
bspc config remove_unplugged_monitors true

bspc wm -r      
