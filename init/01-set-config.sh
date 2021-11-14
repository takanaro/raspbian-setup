#!/bin/bash -eu

# if [ "$(whoami)" != "root" ]; then
#   echo "Require root privilege"
#   exit 1
# fi

passwd || true

# sudo権限必要
sudo timedatectl set-timezone Asia/Tokyo
localectl set-locale LANG=ja_JP.utf8 || true
localectl set-keymap jp106
git config --global core.editor 'vim -c "set fenc=utf-8"'

echo "complete"