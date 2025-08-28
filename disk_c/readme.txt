Welcome to BasicLinux 3.5
~~~~~~~~~~~~~~~~~~~~~~~~~
BL3 is a mini-Linux designed specifically for old PCs.  It provides a slim
2.2.26 kernel, a user-friendly shell and an assortment of utilities.  BL3 
includes a web browser, comm program, mail client, telnet client, wget, dhcp 
and dial-up ppp.  It also includes a small-footprint GUI and is able to run 
remote X (via network) with as little as 4mb RAM.

Minimum requirements
~~~~~~~~~~~~~~~~~~~~
Intel 386 or compatible    
3mb RAM             
DOS (or Windows 95/98 running in DOS mode)      

Starting BasicLinux 
~~~~~~~~~~~~~~~~~~~ 
Unzip BL3-5x.zip to the C:\baslin directory.  The directory must be called
baslin, and it must be a top directory (not a sub-directory of another
directory).  

If you have less than 8mb RAM, you must activate swap memory.  You do this 
by unzipping swap.zip (in C:\baslin).

To start BL3, type BOOT and press the ENTER key.

Problem?
~~~~~~~~
To boot correctly, BL3 needs a relatively clean DOS.  If BL3 refuses to
boot (or it crashes when you try to run X), start your DOS without extras:
no CONFIG.SYS, no AUTOEXEC.BAT, no Windows.

PCMCIA  (optional)
~~~~~~
BL3 is able to use standard PCMCIA cards (but not cardbus cards).  
To activate a PCMIA card, insert it in the slot and then execute:  
/etc/pcmcia/start

Networking  (optional)
~~~~~~~~~~
If you have a suitable ethernet card, you can utilize it in BasicLinux.  
The steps are outlined in the file "netsetup" (in the /root directory).  
Just edit "netsetup" to match your situation and execute it.

If you have a suitable modem, you can run pppsetup to configure a dial-up
connection to your Internet Service Provider.  Note:  many of the modems 
in Windows computers are designed to work only with Windows -- they do not 
work with BasicLinux. 

Installing BasicLinux to an ext2 partition  (optional)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
From inside BL3, use fdisk and mke2fs to create a Linux partition on your 
harddisk.  Mount that partition at /hd and execute install-to-hd.


Disclaimer
~~~~~~~~~~
BasicLinux is free software.  I have done my best to make it error-free, 
but there is no guarantee regarding its fitness for any purpose.  You use
it at your own risk.

BasicLinux 3 is designed for old PCs with limited RAM.  It is not suitable
for mission-critical systems and should not be used on systems containing
irreplacable data.

