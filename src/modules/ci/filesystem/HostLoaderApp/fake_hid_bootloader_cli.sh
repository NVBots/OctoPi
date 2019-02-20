#!/bin/bash

fname=${@: -1}

# Check if file is valid hex

res="$(hid_bootloader_cli -mmcu=at90usb1286 $fname 2>&1)"

if [ "$res" = "Unable to open device" ]; then
   :
elif [[ "$res" = "error reading intel hex file"* ]]; then
    echo $res
    exit 1
else
    echo unknown error: $res
    exit 1
fi

sleep 1
echo Firmware flashed!

exit 0