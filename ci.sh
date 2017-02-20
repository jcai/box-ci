#!/bin/bash
mkdir target
cd target
git clone --depth 1 https://bitbucket.org/zvirt/zvirt-box.git zvirt-box
git clone --depth 1 --branch 6.1-Unstable https://github.com/Thinstation/thinstation.git thinstation
cp -rp zvirt-box/ts/* thinstation/ts/
#sudo ./setup-chroot -a -b -o --license ACCEPT --autodl
