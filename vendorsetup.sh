#!/bin/bash

# Apply necessary F2FS-tools patch
cd $(realpath .)/external/f2fs-tools/
if git apply -p1 $OLDPWD/device/huawei/emily/prebuilts/0001-f2fs-tools-remove-CP_NAT_BITS_FLAG.patch; then
    echo "Patch applied to F2FS-tools"
    cd $OLDPWD
elif git apply -p1 --reverse --check $OLDPWD/device/huawei/emily/prebuilts/0001-f2fs-tools-remove-CP_NAT_BITS_FLAG.patch; then
    echo "F2FS-tools patch has already been applied, skipping..."
    cd $OLDPWD
else
    echo "F2FS-tools patch could not be applied automatically, it must be done manually. Aborting..."
    cd $OLDPWD
fi

## OrangeFox variables:
# General information
#export FOX_VERSION="R11.1"
export OF_MAINTAINER="GamerBoy1234294"
export MAINTAINER=${OF_MAINTAINER}
if [ -f $(realpath .)/bootable/recovery/gui/theme/portrait_hdpi/images/Default/About/maintainer.png ]; then
    ln -sf ../../../../../../../../device/huawei/emily/maintainer.png $(realpath .)/bootable/recovery/gui/theme/portrait_hdpi/images/Default/About/maintainer.png
fi

# Build environment stuffs
export ALLOW_MISSING_DEPENDENCIES=true
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export FOX_TARGET_DEVICES="P20, HuaweiP20, emily, Emily"
export TARGET_DEVICE_ALT="P20, HuaweiP20, emily, Emily"

# Use magisk boot for patching
export OF_USE_MAGISKBOOT=1
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1

# Vanilla build
export FOX_VANILLA_BUILD=1

# Screen specifications
export OF_STATUS_INDENT_LEFT=48
export OF_STATUS_INDENT_RIGHT=48
export OF_ALLOW_DISABLE_NAVBAR=0
export OF_CLOCK_POS=0
export OF_SCREEN_H=2240
export OF_STATUS_H=85

# Device stuff
export OF_USE_LEGACY_BATTERY_SERVICES=1

# Use updated binaries
export FOX_REPLACE_TOOLBOX_GETPROP=1
export FOX_BASH_TO_SYSTEM_BIN=1
export FOX_USE_UPDATED_MAGISKBOOT=1
export FOX_BUILD_BASH=1

# Run a process after formatting data to work-around MTP issues
export OF_RUN_POST_FORMAT_PROCESS=1

# Use /data/recovery/Fox/ for Storage
export FOX_USE_DATA_RECOVERY_FOR_SETTINGS=1

# Don't install AromaFM
export FOX_DELETE_AROMAFM=1

# Add some extras
export FOX_USE_ZIP_BINARY=1
export FOX_USE_TAR_BINARY=1
export FOX_USE_SED_BINARY=1
export FOX_USE_XZ_UTILS=1
export FOX_USE_LZ4_BINARY=1
export FOX_USE_ZSTD_BINARY=1
export FOX_ASH_IS_BASH=1
export FOX_REPLACE_BUSYBOX_PS=1
export FOX_USE_BASH_SHELL=1
#export OF_USE_LZ4_COMPRESSION=1
export FOX_USE_NANO_EDITOR=0
export OF_DONT_KEEP_LOG_HISTORY=1
export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=0
export FOX_INSTALLER_DISABLE_AUTOREBOOT=1
export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
export OF_ENABLE_FS_COMPRESSION=1
export FOX_REPLACE_TOOLBOX_GETPROP=1
export FOX_BASH_TO_SYSTEM_BIN=1
export FOX_ENABLE_APP_MANAGER=1
export FOX_VARIANT="default"
export OF_USE_GREEN_LED=1

## SkyHawk variables:
# Maintainer flags
export SHRP_MAINTAINER="GamerBoy1234294"

# Build environment stuff
export SHRP_DEVICE_CODE=emily
export ALLOW_MISSING_DEPENDENCIES=true
export SHRP_PATH=device/huawei/$SHRP_DEVICE_CODE

# Recovery Type (for "About" section only)
# Default (if not set): N/A
export SHRP_REC_TYPE=SAR

# Your device's recovery path, dont use blindly
# Default (if not set): N/A
export SHRP_REC=/dev/block/by-name/recovery_ramdisk

# Device Type (for "About" section only)
# Default (if not set): N/A
export SHRP_DEVICE_TYPE=A_Only

# Use this flag only if SHRP_REC is set
# Default (if not set): N/A
export SHRP_HAS_RECOVERY_PARTITION=true

# External SDcard path
# Default (if not set): /
export SHRP_EXTERNAL=/external_sd

# USB OTG path
# Default (if not set): /
export SHRP_OTG=/usb_otg

# SHRP padding flag (for rounded corner devices only)
# You have to change these values according to your device's roundness.
export SHRP_STATUSBAR_RIGHT_PADDING=48
export SHRP_STATUSBAR_LEFT_PADDING=48

# For notch devices
# Default (if not set): N/A
export SHRP_NOTCH=true

# Flashlight: (0 = disable, 1 = enable)
# Default (if not set): 0
export SHRP_FLASH=1

# Custom led paths for flashlight
# Find yours then replace the examples here
export SHRP_CUSTOM_FLASHLIGHT=true
export SHRP_FONP_1=/sys/class/leds/torch/brightness
export SHRP_FLASH_MAX_BRIGHTNESS=255

# SHRP Express, enables on-the-fly theme patching (also persistent) + persistent lock
# Default (if not set): N/A
export SHRP_EXPRESS=true
