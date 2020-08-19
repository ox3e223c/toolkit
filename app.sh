#!/bin/bash

# include global setting
source ./app-global.sh

if ! command -v dialog &> /dev/null
then
    echo "dialog could not be found"
    sudo apt-get install dialog
    exit
fi

OPTIONS=(
0 "Basic install"
1 "Setup Raspberry Pi Screen"
2 "Vim"
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
  0)
    bash ./app-basic.sh
    ;;
  1)
    bash ./app-screen.sh
    ;;
  2)
    bash ./app-vim.sh
    ;;
esac

