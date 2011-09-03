#!/system/bin/sh

chmod 755 /system/wifi/*.sh
setprop wifi.interface eth0
setprop wifi.chip.type BCM_4319
setprop ro.tether.denied false
setprop ro.wps_enabled true
insmod /system/wifi/kineto_gan.ko

