#!/sbin/sh

sleep 5

# clear boot-recovery flag
dd if=/dev/zero of=/dev/block/platform/omap/omap_hsmmc.1/by-name/misc seek=0 count=13 bs=1

## Restart adbd, just in case
killall -9 adbd
chmod 0666 /sys/class/leds/button-backlight/brightness
echo "0" > /sys/class/leds/button-backlight/brightness
chmod 0444 /sys/class/leds/button-backlight/brightness
