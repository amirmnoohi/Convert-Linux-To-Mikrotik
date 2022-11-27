#!/bin/bash

# for VMWARE:
wget https://download.mikrotik.com/routeros/6.48.6/chr-6.48.6.img.zip -O chr.img.zip

# for KVM:
wget https://download.mikrotik.com/routeros/7.1/chr-7.1.img.zip -O chr.img.zip

echo u > /proc/sysrq-trigger 

# Check main disk using lsblk command
dd if=chr.img bs=1024 of=/dev/vda
echo s > /proc/sysrq-trigger 
echo b > /proc/sysrq-trigger

# Then Configure Network using Console manually
