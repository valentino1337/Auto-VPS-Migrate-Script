#!/bin/bash
apt update
apt upgrade
apt-get update
apt-get upgrade
apt-get install rsync

rsync -auHxvz --numeric-ids="ssh" --exclude=/etc/fstab --exclude=/etc/network/* --exclude=/proc/* --exclude=/tmp/* --exclude=/sys/* --exclude=/dev/* --exclude=/mnt/* --exclude=/boot/* --exclude=/root/* --progress root@$1:/* /
