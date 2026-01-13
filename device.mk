# Misc
# PRODUCT_PACKAGES += \
#     vendor.huawei.hardware.biometrics.hwsecurefacerecognize@2.0.vendor \
#     vendor.huawei.hardware.biometrics.hwfacerecognize@2.0.vendor

PRODUCT_PACKAGES += \
    vendor.huawei.hardware.hwfactoryinterface@1.1.vendor \
    vendor.huawei.hardware.camera.cfgsvr@1.1.vendor \
    vendor.huawei.hardware.hwvibrator@1.0.vendor \
    vendor.huawei.hardware.sensors@1.0.vendor

PRODUCT_PACKAGES += \
    vendor.huawei.hardware.perfgenius@2.0.vendor \
    libperfgenius_vendor_client \
    libiawareperf_client

# PRODUCT_PACKAGES += \
#     libchrlog \
#     libhwlog \
#     libxcollie

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-service

PRODUCT_PACKAGES += \
    libkeymaster3device.vendor \
    libkeystore-engine-wifi-hidl \
    libkeystore-wifi-hidl

# Light
PRODUCT_PACKAGES += \
    android.hardware.light-service.huawei

# FastbootD
PRODUCT_PACKAGES += \
    fastbootd
