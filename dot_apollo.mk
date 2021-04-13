#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from apollo device
$(call inherit-product, device/xiaomi/apollo/device.mk)

# Inherit some common dotProject stuff.
$(call inherit-product, vendor/dot/config/common.mk)

# blur
TARGET_SUPPORTS_BLUR := true

# bootanim
TARGET_BOOT_ANIMATION_RES := 1080

# gapps
WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_PIXEL_CHARGER := true

# Face unlock
TARGET_USES_FACE_UNLOCK := true

# dotOs
#DOT_OFFICIAL := false

# Product
PRODUCT_NAME := dot_apollo
PRODUCT_DEVICE := apollo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL ?= Mi 10T Pro

BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ2A.210405.005/7181113:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
