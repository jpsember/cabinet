# Backing up and restoring Raspberry Pi SD Card

These notes are derived from [this link](https://beebom.com/how-clone-raspberry-pi-sd-card-windows-linux-macos/).


## Identify the device containing the SD card

Insert the SD card in the Mac using a USB or built-in card reader.

In Terminal, type:
```
diskutil list


When I did it, the SD card shows up as `/dev/disk2` .

## Unmount the SD card

```
diskutil unmountDisk /dev/disk2
```

## Save the SD card to the hard drive

```
sudo dd if=/dev/disk2 of=~/raspbian_backup.img
```

## Compress the image

This zips the (full-size) image to `compressed.zip` :
```
zip compressed raspbian_backup.img
```

## Delete the uncompressed image

```
rm raspbian_backup.img
```


## Restoring backup to SD card

Unzip the compressed image:
```
unzip compressed.zip
```

Insert the SD card in the mac.

Identify the device containing the SD card:
```
diskutil list
```

Unmount the SD card:
```
diskutil unmountDisk /dev/disk2
```

Write the (full-size) image to the SD card:
```
sudo dd if=~/raspbian_backup.img of=/dev/disk2
```
