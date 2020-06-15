#!/bin/bash

NRF5_SDK=nRF5_SDK_16.0.0_98a08e2
NRF5_SDK_ARCHIVE=${NRF5_SDK}.zip
NRF5_SDK_MAJOR=`echo ${NRF5_SDK} | sed -e "s/nRF5_SDK_\([0-9]*\)\..*/\1/g"`
NRF5_SDK_URL=https://developer.nordicsemi.com/nRF5_SDK/nRF5_SDK_v${NRF5_SDK_MAJOR}.x.x/${NRF5_SDK_ARCHIVE}

if [ ! -d ${NRF5_SDK} ]
then
    echo "Download nRF5 SDK ${NRF5_SDK_MAJOR} from ${NRF5_SDK_URL}"
    wget -c ${NRF5_SDK_URL}
    unzip ${NRF5_SDK_ARCHIVE} -d ${NRF5_SDK}
fi

export GNU_INSTALL_ROOT=/usr/bin/
export GNU_VERSION=`arm-none-eabi-gcc -dumpversion`
