#
# Copyright (C) 2026 The OrangeFox Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Custom vendor used in build tree
CUSTOM_VENDOR := twrp

# Inherit from our custom product configuration
$(call inherit-product, vendor/$(CUSTOM_VENDOR)/config/common.mk)

PRODUCT_DEVICE := charoite
PRODUCT_NAME := twrp_charoite
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 15 Pro 4G
PRODUCT_MANUFACTURER := Xiaomi

DEVICE_PATH := device/xiaomi/charoite

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, $(DEVICE_PATH)/device.mk)
