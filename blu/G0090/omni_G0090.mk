#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from G0090 device
$(call inherit-product, device/blu/G0090/device.mk)

PRODUCT_DEVICE := G0090
PRODUCT_NAME := omni_G0090
PRODUCT_BRAND := BLU
PRODUCT_MODEL := G5
PRODUCT_MANUFACTURER := blu

PRODUCT_GMS_CLIENTID_BASE := android-blu-rev2

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="s9863a_fs171_project-user 9 PPR1.180610.011 34510 release-keys"

BUILD_FINGERPRINT := BLU/BLU_G5/G0090:9/PPR1.180610.011/34510:user/release-keys
