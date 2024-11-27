#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from tank device
$(call inherit-product, device/motorola/tank/device.mk)

PRODUCT_DEVICE := tank
PRODUCT_NAME := omni_tank
PRODUCT_BRAND := motorola
PRODUCT_MODEL := tank
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tank-user 12 U3UWS34.67-19-3 24804 release-keys"

BUILD_FINGERPRINT := motorola/tank/tank:12/U3UWS34.67-19-3/24804:user/release-keys
