#
# Copyright (C) 2026 The OrangeFox Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

FDEVICE="charoite"

fox_get_target_device() {
local chkdev=$(echo "$BASH_SOURCE" | grep -w "$FDEVICE")
   if [ -n "$chkdev" ]; then 
      FOX_BUILD_DEVICE="$FDEVICE"
   else
      chkdev=$(set | grep BASH_ARGV | grep -w "$FDEVICE")
      [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
   fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
   fox_get_target_device
fi

if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
    export FOX_AB_DEVICE=1
    export OF_AB_DEVICE_WITH_RECOVERY_PARTITION=1
    export FOX_VIRTUAL_AB_DEVICE=1
    export FOX_USE_BASH_SHELL=1
    export FOX_USE_SED_BINARY=1
    export FOX_USE_TAR_BINARY=1
    export FOX_ENABLE_APP_MANAGER=1
    export FOX_USE_NANO_EDITOR=1
    export OF_MAINTAINER="BootFox"
    export FOX_TARGET_DEVICES="charoite,charoite_global"
    export OF_SCREEN_H=2400
    export OF_STATUS_H=96
    export OF_STATUS_INDENT_LEFT=48
    export OF_STATUS_INDENT_RIGHT=48
    export OF_CLOCK_POS=1
    export OF_ALLOW_DISABLE_NAVBAR=0
    export OF_QUICK_BACKUP_LIST="/data;/boot;/dtbo;super;"
    export OF_USE_GREEN_LED=0
    export OF_FLASHLIGHT_ENABLE=1
    export OF_FL_PATH1=/sys/devices/platform/flashlights_mt6789/mt6789_torch
fi
