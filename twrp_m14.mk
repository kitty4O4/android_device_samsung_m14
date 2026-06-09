#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

# Inherit some common pbrp stuff.
$(call inherit-product-if-exists, vendor/pb/config/common.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit from m14 device
$(call inherit-product, device/samsung/m14/device.mk)

PRODUCT_DEVICE := m14
PRODUCT_NAME := twrp_m14
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M145F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m14ddxx-user 13 TP1A.220624.014 M145FXXS8DYH2 release-keys"

BUILD_FINGERPRINT := samsung/m14ddxx/m14:13/TP1A.220624.014/M145FXXS8DYH2:user/release-keys

# Apply JDM haptics patch before building recovery
$(shell $(LOCAL_PATH)/apply_jdm_haptics_patch.sh >/dev/null 2>&1)