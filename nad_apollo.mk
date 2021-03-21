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

# Inherit some common NusantaraProject stuff.
$(call inherit-product, vendor/nusantara/config/common_full_phone.mk)

TARGET_USES_BLUR := true
USE_PIXEL_CHARGING := true
NAD_BUILD_TYPE := OFFICIAL
TARGET_BOOT_ANIMATION_RES := 1080
USE_GAPPS ?= true
USE_AOSP_CLOCK := true

# Product
PRODUCT_NAME := nad_apollo
PRODUCT_DEVICE := apollo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL ?= Mi 10T Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
