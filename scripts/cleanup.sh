#!/bin/sh -eux

rm -rf /tmp/*

yum -y remove gcc cpp kernel-devel kernel-headers kernel-uek-devel
rm -rf /var/cache/yum

rm -rf /root/.ansible /root/.ansible_async
