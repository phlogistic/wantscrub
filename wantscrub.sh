#!/bin/bash

picturedir='/storage/3A23-DD78/DCIM/Camera'

lastPictureFile="$(adb shell ls $picturedir | tail -1)"

adb pull $picturedir/$lastPictureFile .

exiftool -all= $lastPictureFile

rm *.*_original

adb shell rm $picturedir/$lastPictureFile