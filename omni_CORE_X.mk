#
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from CORE_X device
$(call inherit-product, device/xsmart/CORE_X/device.mk)

PRODUCT_DEVICE := CORE_X
PRODUCT_NAME := omni_CORE_X
PRODUCT_BRAND := Xsmart
PRODUCT_MODEL := CORE_X
PRODUCT_MANUFACTURER := xsmart

PRODUCT_GMS_CLIENTID_BASE := android-xsmart

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_k62v1_64_bsp-user 12 SP1A.210812.016 1695804797 release-keys"

BUILD_FINGERPRINT := Xsmart/CORE_X/CORE_X:13/TP1A.220624.014/1695804797:user/release-keys
