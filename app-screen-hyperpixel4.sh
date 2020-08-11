#!/bin/bash

# include global setting
source ./app-global.sh

OPTIONS=(
1 "安裝 HyperPixel 4.0 Drivers"
2 "安裝 Hyperpixel4 HDMI 自動切換功能"
3 "移除自動切換"
)

CHOICE=$(dialog --clear \
  --backtitle "$BACKTITLE" \
  --title "$TITLE" \
  --menu "$MENU" \
  $HEIGHT $WIDTH $CHOICE_HEIGHT \
  "${OPTIONS[@]}" \
  2>&1 >/dev/tty)

clear
case $CHOICE in
  1)
    echo "Install HyperPixel 4.0 Drivers"
    curl -sSL https://get.pimoroni.com/hyperpixel4 | bash
    ;;
  2)
    #備份檔案
    #sudo cp /etc/rc.local ./screen/hyperpixel4/backup/etc/rc.local
    #sudo cp /boot/config.txt ./screen/hyperpixel4/backup/boot/config.txt

    #安裝功能
    #sudo cp /boot/config.txt /boot/hyper-config.txt
    #sudo cp /boot/config.txt /boot/hdmi-config.txt
    #sudo cp ./screen/hyperpixel4/boot/hdmi-config.txt /boot/hdmi-config.txt

    #sudo cp ./screen/hyperpixel4/etc/rc.local /etc/rc.local
    ;;
  3)
    #還原安裝
    ;;
esac


