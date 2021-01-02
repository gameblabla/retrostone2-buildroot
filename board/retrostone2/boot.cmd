setenv bootargs quiet net.ifnames=0 root=/dev/mmcblk0p1 rootwait rootfstype=ext4 ro video=Unknown-1:640x480-32@60 video=HDMI-A-1:d video-mode=sunxi:640x480-32@60,monitor=hdmi,hpd=0,edid=0 cma=256M panic=10 ${extra}
ext4load mmc 0 0x49000000 /boot/${fdtfile}
ext4load mmc 0 0x46000000 /boot/zImage
env set fdt_high ffffffff
bootz 0x46000000 - 0x49000000
