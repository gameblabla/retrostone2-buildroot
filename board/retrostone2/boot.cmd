setenv bootargs console=ttyS0,115200 root=/dev/mmcblk0p1 rootwait rootfstype=ext4 rw video=Unknown-1:640x480-32@60 video=HDMI-A-1:d cma=256M hdmi.audio=EDID:0 disp.screen0_output_mode=1920x1080p60 panic=10 ${extra}
ext4load mmc 0 0x49000000 /boot/${fdtfile}
ext4load mmc 0 0x46000000 /boot/zImage
env set fdt_high ffffffff
bootz 0x46000000 - 0x49000000
