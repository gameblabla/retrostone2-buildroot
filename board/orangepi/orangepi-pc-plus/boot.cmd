setenv fdt_high ffffffff

setenv bootargs console=ttyS0,115200 earlyprintk root=/dev/mmcblk0p2 rootwait hdmi.audio=EDID:0 disp.screen0_output_mode=1920x1080p60 video=Composite-1:720x480

fatload mmc 0 $kernel_addr_r zImage
fatload mmc 0 $fdt_addr_r sun8i-h3-orangepi-pc-plus.dtb

bootz $kernel_addr_r - $fdt_addr_r
