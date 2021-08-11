#!/bin/bash
apt update
apt upgrade
apt-get update
apt-get upgrade
apt-get install rsync

rsync -aHAXSz --delete --info=progress2 --numeric-ids -e "ssh" --rsync-path="rsync" --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/etc/fstab","/etc/udev/rules.d/*","/etc/network/*","/lib/modprobe.d/*"} root@$1:/* /
