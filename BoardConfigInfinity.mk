#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Add before redbull BoardConfigInfinity.mk
BOOT_KERNEL_MODULES += ftm5.ko

include device/google/redbull/BoardConfigInfinity.mk

TARGET_SYSTEM_PROP += device/google/bramble/system.prop

BOOT_SECURITY_PATCH := 2023-11-05
VENDOR_SECURITY_PATCH := 2023-11-05

include vendor/google/bramble/BoardConfigVendor.mk
