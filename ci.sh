#!/bin/bash
set -e
mkdir target
cd target
echo -e "Host *\n\tStrictHostKeyChecking no\n" >> ~/.ssh/config
echo -e "$SSH_KEY" > ~/.ssh/id_rsa.pub
echo -e "$SSH_PRIVATE_KEY" > ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa*
eval `ssh-agent -s`
ssh-add ~/.ssh/id_rsa

git clone --depth 1 $GIT_URL zvirt-box
git clone --depth 1 --branch 6.1-Unstable https://github.com/Thinstation/thinstation.git thinstation
ls -alh
cp -rp zvirt-box/ts/* thinstation/ts/
cd thinstation
#sudo ./setup-chroot -a -b -o --license ACCEPT --autodl
