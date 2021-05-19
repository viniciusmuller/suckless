This repository contains my custom builds of some suckless tools that I use

## Installation
```sh
sudo sh install_all.sh
```
> This will run `sudo make install clean` in each build directory.

## dwm

- Patches

  - focusonnetactive
  - autostart
  - centeredmaster
  - restartsig
  - fancybar
  - gaps

- Custom keymaps
  - `printscreen`: flameshot gui
  - `prefix + e`: launch dmenu
  - `prefix + a`: launch terminal
  - `prefix + x`: kill current window
  - `prefix + u`: centeredmaster layout
  - `prefix + o`: floating centeredmaster layout
  - `prefix + g`: toggle layout script
  - `prefix + -`: decrease window opacity
  - `prefix + =`: increase window opacity
  - `prefix + shift + g`: lock screen
  - `prefix + shift + r`: restart dwm

## st

- Patches
  - font2
  - anysize
  - ligatures

* Font: `JetBrains Mono`

## slock

- Patches
  - dwmlogo

## dmenu

- Patches

  - highpriority
  - numbers

- Scripts
  - dmenu_run_i
