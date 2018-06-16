#!/bin/sh

set -eu

mount -o loop ~/VBoxGuestAdditions.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
rm -f ~/VBoxGuestAdditions.iso
