ubuntu_bright_control
=====================

A brightness control solution for an Acer laptop in Ubuntu 14.04 with the keyboard.


What is it does?
====================

It uses the default system brightness config files to set the brightness level and store the current value.
Keyboard shortcuts can be configured to execute the tasks.
It also saves the last value of your screen brightness and sets it up when your laptop is restarted.

 - bright_up.sh	-> Increments the brigtness level
 - bright_down.sh -> Decrements the brigtness level
 - bright_last.conf -> Saves the last brightness value
 - bright_start.sh -> Sets the required permissions to the files and sets the brightness to the value stored in bright_last.conf


How to use
=====================

 1 - Copy the files in your /etc

 2 - Give permissions:
	chmod +x /etc/bright_start.sh
	chmod +x /etc/bright_up.sh
	chmod +x /etc/bright_down.sh
	chmod 700 /etc/bright_start.sh

 3 - Add the next line to /etc/rc.local before "exit 0". 
	/etc/bright_start.sh

 4 - Exceute /etc/bright_start.sh or restar your system.

 5 - Change your keyboard shortcuts for calling bright_up.sh and bright_down.sh with the keyboard.
	https://help.ubuntu.com/14.04/ubuntu-help/keyboard-shortcuts-set.html


Problems I found
=====================

When the computer is restarted the system files restores its original permission and the scripts can't change the brightness values. This is why bright_start.sh sets the permissions when is executed by /etc/rc.local at the startup.

My laptop doesn't support Fn key mapping so I have had to execute the scripts with the left control key.

I tried to show it on the system notification but the refresh is too slow to be useful. If I use the default brightness keys it shows me the brightness level updated because I'm using the system files to save the current values, but I couldn't find a method for showing this information with the scripts.
     	
