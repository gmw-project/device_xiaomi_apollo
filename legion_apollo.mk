#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from apollo device
$(call inherit-product, device/xiaomi/apollo/device.mk)

# Inherit some common legionProject stuff.
$(call inherit-product, vendor/legion/config/common_full_phone.mk)

# Legion OS Build
LEGION_MAINTAINER := goodmeow
PRODUCT_PROPERTY_OVERRIDES += \
    ro.maintainer.name=goodmeow
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_BLUR := true
TARGET_SUPPORT_FACE_UNLOCK := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
WITH_GAPPS ?= true
TARGET_GAPPS_ARCH := arm64

# Product
PRODUCT_NAME := legion_apollo
PRODUCT_DEVICE := apollo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL ?= Mi 10T Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
