#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Infinity stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/bramble/aosp_bramble.mk)
$(call inherit-product, device/google/redbull/infinity_common.mk)

include device/google/bramble/device-infinity.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4a (5G)
PRODUCT_NAME := infinity_bramble

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="bramble-user 14 UP1A.231105.001.B2 11260668 release-keys" \
    BuildFingerprint=google/bramble/bramble:14/UP1A.231105.001.B2/11260668:user/release-keys \
    DeviceProduct=bramble

$(call inherit-product, vendor/google/bramble/bramble-vendor.mk)
