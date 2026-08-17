#!/bin/bash

window=$(hyprctl activewindow -j 2>/dev/null)
class=$(echo "$window" | jq -r '.initialClass // "empty"')
title=$(echo "$window" | jq -r '.title // ""')

if [[ "$class" == "empty" || -z "$title" ]]; then
  echo '{"text": "", "tooltip": ""}'
  exit 0
fi

case "$class" in
  Alacritty|kitty|foot|wezterm|ghostty|hyper)            icon="" ;;
  firefox|firefoxdeveloperedition|librewolf|zen*)        icon="" ;;
  Chromium|chromium|google-chrome|brave-browser|vivaldi) icon="" ;;
  Code|code|code-oss|cursor)                             icon="" ;;
  discord|Discord)                                        icon="" ;;
  Spotify|spotify)                                        icon="" ;;
  thunar|nautilus|dolphin|pcmanfm|org.gnome.Nautilus)    icon="" ;;
  obsidian)                                               icon="" ;;
  telegram-desktop|TelegramDesktop)                       icon="" ;;
  Slack|slack)                                            icon="" ;;
  thunderbird|Thunderbird)                                icon="" ;;
  zathura|org.pwmt.zathura)                               icon="" ;;
  mpv|vlc|VLC)                                            icon="" ;;
  steam|Steam)                                            icon="" ;;
  pavucontrol|pavucontrol-qt)                            icon="" ;;
  org.gnome.Settings|gnome-control-center)                icon="" ;;
  *)                                                      icon="" ;;
esac

echo "{\"text\": \"${icon} ${title}\", \"tooltip\": \"${class}\"}"
