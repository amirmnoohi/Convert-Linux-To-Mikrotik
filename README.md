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
![image](https://user-images.githubusercontent.com/19514168/204160863-3bcd54fb-073e-41e0-9369-681fad69fc9a.png)

**important note: if you don't set your disk device correctly, mikrotik won't boot correctly afer reboot.**


### Write image to disk
```
dd if=chr.img bs=1024 of=/dev/vda  # you should change /dev/vda to appropriate disk device
```


### Sync Disk and reboot
```
echo s > /proc/sysrq-trigger 
echo b > /proc/sysrq-trigger
```

### Then Configure Network using Console manually
