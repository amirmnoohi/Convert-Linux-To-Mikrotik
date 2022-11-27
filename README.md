# Convert-Linux-To-Mikrotik



### For VMWare VMs Download below image:

```
wget https://github.com/amirmnoohi/Convert-Linux-To-Mikrotik/releases/download/v1/chr-vmware.img -O chr.img.zip
```


### For KVM VMs Download below image:

```
wget https://github.com/amirmnoohi/Convert-Linux-To-Mikrotik/releases/download/v1/chr-kvm.img -O chr.img.zip
```

```
echo u > /proc/sysrq-trigger 
```

Check main disk using lsblk command like below image:
```
lsblk
```


### Write image to disk
```
dd if=chr.img bs=1024 of=/dev/vda
```


### Sync Disk and reboot
```
echo s > /proc/sysrq-trigger 
echo b > /proc/sysrq-trigger
```

### Then Configure Network using Console manually
