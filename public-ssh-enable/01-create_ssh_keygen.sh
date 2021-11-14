#!/bin/bash -eu

#
# 01:公開鍵を作成して外部から公開鍵で接続できるようにする
#

rm -rf ~/.ssh
mkdir ~/.ssh
chmod 700 ~/.ssh

ssh-keygen -t rsa -b 4096

mv ~/.ssh/id_rsa.pub ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

# 秘密鍵をダウンロードし、公開鍵でログインできるか確認する
# ダウンロード後のid_rsaの権限は600に設定しないと接続できない
sudo systemctl restart sshd