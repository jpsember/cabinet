# Attempting to install an older version of the rpi os to be compatible with retropie.

According to https://retropie.org.uk/docs/Manual-Installation/
which says:
```
NOTE: The Raspberry Pi OS 'bullseye' release is not yet supported by RetroPie. Manual installation should use the previous/legacy release of Raspberry Pi OS, available here.

```

I downloaded the .xz file and apparently that is a compression format.  I double clicked in finder and it has decompressed it to an .img file.

Now attempting to use ApplePiBaker to 'restore from backup' to write this image file to the sd card.

That failed; when booting the rpi, it says the os doesn't support RPi 5.

Now following instructions at https://community.grommunio.com/d/1427-raspberry-pi-appliance-fails-to-run-on-raspberry-pi-5/2

using rpi imager software to install an older os to the rpi5.

That worked! It boots, asks for a login (pi) and password (password).

Following manual instructions at

https://retropie.org.uk/docs/Manual-Installation/

Changed the locale to US english by sudo raspi-config




I'm getting a lot of network related problems.  Let's go headless ssh in and try that way.

On the rpi, which I moved downstairs, I did
```
ifconfig -a
```
and the wlan0 entry has 10.0.0.184, which did the trick.


Ok, lots to report.

Got retropie working.  Issues:

1) the joystick I bought is pretty terrible.  The directional joysticks are very flaky.  I think I'll stick to using the keyboard for experiments.
2) emulationstation is pretty gruesome.  It is very difficult to get it to configure the controls (which is a *separate, i.e, independent* configuration than what mame uses).  I think I will just try to install mame itself, without any retropie-style frontends, for simplicity.
3) I deleted all the roms except ones that seem to work: stargate, joust, digdug.  Stargate seems to run fine without the sound problems I noticed earlier.

Oh also, I wasted a lot of time trying to get a java library to compile that can read USB joysticks.  Instead, I found a very nice little free app store app that shows all the buttons on my Microntek USB joystick.

I'm now burning an image of the rasbperry pi sd card for storage while I attempt further experiments.  I'm using ApplePi baker for this, and it's going to take about 20 minutes.



Ok, I made some progress with RetroPie.

Plays joust nicely via the keyboard.

I saved to the notes directory the EmulationStation controls settings:  es_input.cfg

Now going to try to use the physical joystick and remap things

That worked well!

Tried plugging into the big TV and it runs super fast, like there's no delay.  Doesn't do that on my ASUS monitor.


Trying to figure out how to exit a game and return to emulationstation.

https://retropie.org.uk/forum/topic/20993/can-t-exit-game-in-mame/10

https://retropie.org.uk/forum/topic/20993/can-t-exit-game-in-mame/14


This is the emulationstation UI controls config file:


```
<?xml version="1.0"?>
<inputList>
  <inputConfig type="keyboard" deviceName="Keyboard" deviceGUID="-1">
    <input name="a" type="key" id="100" value="1" />
    <input name="b" type="key" id="115" value="1" />
    <input name="down" type="key" id="107" value="1" />
    <input name="hotkeyenable" type="key" id="96" value="1" />
    <input name="left" type="key" id="106" value="1" />
    <input name="leftthumb" type="key" id="32" value="1" />
    <input name="right" type="key" id="108" value="1" />
    <input name="select" type="key" id="103" value="1" />
    <input name="start" type="key" id="104" value="1" />
    <input name="up" type="key" id="105" value="1" />
    <input name="x" type="key" id="119" value="1" />
    <input name="y" type="key" id="97" value="1" />
  </inputConfig>
  <inputConfig type="joystick" deviceName="Microntek USB Joystick" vendorId="121" productId="6" deviceGUID="0300ff47790000000600000010010000">
    <input name="a" type="button" id="1" value="1" />
    <input name="b" type="button" id="2" value="1" />
    <input name="down" type="axis" id="1" value="1" />
    <input name="hotkeyenable" type="button" id="8" value="1" />
    <input name="left" type="axis" id="0" value="-1" />
    <input name="right" type="axis" id="0" value="1" />
    <input name="select" type="button" id="8" value="1" />
    <input name="start" type="button" id="9" value="1" />
    <input name="up" type="axis" id="1" value="-1" />
    <input name="x" type="button" id="0" value="1" />
    <input name="y" type="button" id="3" value="1" />
  </inputConfig>
</inputList>
```
And it is stored at: `/home/pi/.emulationstation/es_input.cfg`


Where are the MAME config files?

They are at:
`/home/pi/RetroPie/roms/arcade/mame2003/cfg`






