# Misc
# PRODUCT_PACKAGES += \
#     vendor.huawei.hardware.biometrics.hwsecurefacerecognize@2.0.vendor \
#     vendor.huawei.hardware.biometrics.hwfacerecognize@2.0.vendor

PRODUCT_PACKAGES += \
    vendor.huawei.hardware.hwfactoryinterface@1.1.vendor \
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

# Light
PRODUCT_PACKAGES += \
    android.hardware.light-service.huawei

# FastbootD
PRODUCT_SHIPPING_API_LEVEL := 29

PRODUCT_USE_DYNAMIC_PARTITIONS := true
# PRODUCT_RETROFIT_DYNAMIC_PARTITIONS := true

PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery \
    fastbootd

# PRODUCT_PROPERTY_OVERRIDES += \
#     ro.fastbootd.available=true \
#     ro.boot.dynamic_partitions_retrofit=true \
#     ro.boot.dynamic_partitions=true
