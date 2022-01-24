#!/bin/sh

cp $BINARIES_DIR/boot.scr $TARGET_DIR/boot/boot.scr
cp $BINARIES_DIR/zImage $TARGET_DIR/boot/zImage
cp $BINARIES_DIR/sun7i-a20-retrostone2.dtb $TARGET_DIR/boot/sun7i-a20-retrostone2.dtb
#dd if=/dev/zero of=$BINARIES_DIR/apps.ntfs bs=1 count=0 seek=512M
#mkfs.ntfs -F $BINARIES_DIR/apps.ntfs
