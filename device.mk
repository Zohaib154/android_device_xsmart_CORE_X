#
# Copyright (C) 2026 The Android Open Source Project
#

LOCAL_PATH := device/xsmart/CORE_X
# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service

PRODUCT_PACKAGES += \
    bootctrl.mt6765


PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# Enable dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

