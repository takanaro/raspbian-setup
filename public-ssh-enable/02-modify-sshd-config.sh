#!/bin/bash -eu

#
# 02:設定ファイルを編集してsshサービスを再起動する
#

# パスワードによるssh接続無効化
sudo sed -i -re 's/^#(PasswordAuthentication).*$/\1 no/g' /etc/ssh/sshd_config
sudo sed -i -re 's/^#(PermitEmptyPasswords).*$/\1 no/g' /etc/ssh/sshd_config

sudo systemctl restart sshd