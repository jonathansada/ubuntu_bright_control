#!/bin/sh

chmod 555 bright_up.sh
chmod 555 bright_down.sh
chmod 666 /sys/class/backlight/intel_backlight/brightness
chmod 666 /sys/class/backlight/acpi_video0/brightness

b=`cat /etc/bright_last.conf`;
if test $b -le 100 && test $b -ge 10
then
        echo $b > /sys/class/backlight/acpi_video0/brightness 
        echo `expr $b \* 10` > /sys/class/backlight/intel_backlight/brightness
fi

