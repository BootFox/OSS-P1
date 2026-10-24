#
# Copyright (C) 2026 The OrangeFox Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Virtual A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Enable project quotas and casefolding for emulated storage
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# A/B support
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS ?= boot vendor_boot recovery vendor_dlkm dtbo vbmeta super

PRODUCT_USE_DYNAMIC_PARTITIONS := true

PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false

PRODUCT_CHECK_PREBUILT_MAX_PAGE_SIZE := false
PRODUCT_MAX_PAGE_SIZE_SUPPORTED := 4096

TARGET_RECOVERY_DEVICE_DIRS += $(DEVICE_PATH)
