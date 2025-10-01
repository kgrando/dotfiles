#!/bin/sh
set -e 
i3lock --nofork --show-failed-attempts --ignore-empty-password --tiling --image='~/.config/i3/lockscreen.jpeg' 
xset dpms
