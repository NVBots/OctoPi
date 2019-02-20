#!/usr/bin/env bash

apt-get update && apt-get install -y libusb-dev

make clean; make

cp hid_bootloader_cli /usr/bin/
