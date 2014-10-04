#!/bin/sh
b=`cat /sys/class/backlight/acpi_video0/brightness`;
if test $b -lt 100 
then
	b=`expr $b + 6`
	echo $b > /etc/bright_last.conf
	echo $b > /sys/class/backlight/acpi_video0/brightness 
	echo `expr $b \* 10` > /sys/class/backlight/intel_backlight/brightness
fi
