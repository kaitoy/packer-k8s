#!/bin/sh -eux

rm -rf /tmp/*

yum -y remove gcc cpp kernel-devel kernel-headers kernel-uek-devel
yum -y clean all
rm -rf /var/cache/yum
