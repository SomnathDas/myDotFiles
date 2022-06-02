# myDotFiles
My Dotfiles for bspwm, xmonad etc etc

# --------------- BSPWM CONFIG ---------------

# Preview
<img src="/sampleConf/endevour-bspwm.png" style="height: auto; width: 100%">

# Polybar Themes
1. Refer -> https://github.com/adi1090x/polybar-themes

## For Upload/Download Speed in polybar
1. Go to modules.ini of the respective theme and search for "label-connected" in [modules/network]
2. add ```%downspeed% %upspeed%``` at the end of the line before -> " <-

# Picom
1. Install -> https://github.com/ibhagwan/picom (available through AUR)
2. Config -> bspwm(config) -> put this in .config directory in home directory

# Rofi
1. Config -> bspwm(config)

# BSPWM
1. Config -> bspwm(config)

# Shell
1. Refer -> https://github.com/ohmyzsh/ohmyzsh

# Shell Theme
1. Refer -> https://github.com/romkatv/powerlevel10k

# Xprofile
1. Config -> bspwm(config)

# Troubleshooting
## 0% or Error in audio on polybar ?
-> Install *extra/pulseaudio-alsa* [ALSA Configuration for PulseAudio]
through **AUR**

# --------------- XMONAD CONFIG ---------------

# Stuffs make sure to install
1. Xmobar
2. Font Awesome 5 (Font)
3. ttf-ubuntu-font-family (Font)
4. Rofi
5. xinit

# Recommendation
1. Use Linux Zen Kernel 
2. For Nvidia Drivers -> https://aur.archlinux.org/packages/nvidia-390xx-dkms/

# Preview
## Xmonad
<img src="/sampleConf/xmonad.png" style="height: auto; width: 100%">

## Xmobar
<img src="/sampleConf/xmobar.png" style="height: auto; width: 100%">

## Transparent Xmobar
<img src="/sampleConf/transparent_xmobar.png" style="height: auto; width: 100%">

# Stuffs
### !Install all cool basic stuffs from below(#Cool Dotfiles) before using dotfiles uwu
## Cool Dotfiles
https://github.com/antoniosarosi/dotfiles

## Alacritty Themes
https://github.com/eendroroy/alacritty-theme/tree/master/themes

## Another One
https://gitlab.com/dwt1/dotfiles/-/tree/master/.config/xmobar
