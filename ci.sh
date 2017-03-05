#!/bin/bash
set -e
mkdir -p target
cd target
git clone --depth 1 $GIT_URL zvirt-box
git clone --depth 1 --branch 6.1-Unstable https://github.com/Thinstation/thinstation.git thinstation
cd zvirt-box/tools/hard_disk_install
./shell_build_harddisk_iso.sh ../../../thinstation
#ls -alh
#cp -rp zvirt-box/ts/* thinstation/ts/
#cd thinstation
#sudo ./setup-chroot -a -b -o --license ACCEPT --autodl


cd ../../
mvn -B deploy  --settings support/settings.xml
