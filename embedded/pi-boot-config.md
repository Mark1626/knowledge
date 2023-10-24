## Enabling devices in Raspberry IP

[Back](./raspberry-pi.md){: .button}

To enable a device, we need to add it in the device tree present in `/boot/config.txt`

There are presets present in the `/boot` folder

But we need to find the correct version, and hardware revision

To get the model, harware version and revision
```sh
cat /proc/cpuinfo

In my case it was bcm2835
...
...
Hardware        : BCM2835
Revision        : a020d3
Serial          : 000000009da2478e
Model           : Raspberry Pi 3 Model B Plus Rev 1.3
```

To the `/boot/config.txt` you can now add the devices we need

```
device_tree=bcm2837-rpi-3b-plus.dtb
device_tree_param=i2c_arm=on
dtoverlay=i2c0
dtoverlay=i2c1
```

