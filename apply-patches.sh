#!/usr/bin/env bash

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
