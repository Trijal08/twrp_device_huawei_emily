#!/bin/bash

## OrangeFox variables:
# General information
export OF_MAINTAINER="GamerBoy1234294"

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

# Recovery partition name
export FOX_RECOVERY_INSTALL_PARTITION="/dev/block/by-name/recovery_ramdisk"

# Screen specifications
export OF_STATUS_INDENT_LEFT=48
export OF_STATUS_INDENT_RIGHT=48
export OF_ALLOW_DISABLE_NAVBAR=0
export OF_CLOCK_POS=0
export OF_SCREEN_H=2240
export OF_STATUS_H=85

# Use updated binaries
export FOX_REPLACE_TOOLBOX_GETPROP=1
export FOX_BASH_TO_SYSTEM_BIN=1
export FOX_USE_UPDATED_MAGISKBOOT=1
export FOX_BUILD_BASH=1

# Run a process after formatting data to work-around MTP issues
export OF_RUN_POST_FORMAT_PROCESS=1

# Use /data/recovery/Fox/ for Storage
export FOX_USE_DATA_RECOVERY_FOR_SETTINGS=1

# Magisk
MAGISK_URL=$(curl -LsSf https://api.github.com/repos/topjohnwu/Magisk/releases/tags/v27.0 | jq -r '.assets[].browser_download_url | select(test("/Magisk[^/]+\\.apk$"))')
curl -LC - $MAGISK_URL -o device/huawei/emily/Magisk.zip
export FOX_USE_SPECIFIC_MAGISK_ZIP=$(realpath .)/device/huawei/emily/Magisk.zip

# Don't install AromaFM
export FOX_DELETE_AROMAFM=1

# Add some extras
export FOX_USE_ZIP_BINARY=1
export FOX_USE_TAR_BINARY=1
export FOX_USE_SED_BINARY=1
export FOX_USE_XZ_UTILS=1
export FOX_USE_LZ4_BINARY=1
export FOX_USE_ZSTD_BINARY=1
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

# Exclude broken add-ons
export FOX_DELETE_INITD_ADDON=1
