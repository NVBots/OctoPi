#!/bin/bash

pushd src/image
    wget -c --trust-server-names 'https://downloads.raspberrypi.org/raspbian_lite_latest'
popd