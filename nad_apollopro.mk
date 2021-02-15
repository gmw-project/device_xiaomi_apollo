#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from apollopro device
$(call inherit-product, device/xiaomi/apollopro/device.mk)

# Inherit some common nad stuff.
$(call inherit-product, vendor/nad/config/common_full_phone.mk)

PRODUCT_NAME := nad_apollopro
PRODUCT_DEVICE := apollopro
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 10T Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="apollo-user 11 RKQ1.200826.002 20.12.25 release-keys"

BUILD_FINGERPRINT := Redmi/apollo/apollo:11/RKQ1.200826.002/20.12.25:user/release-keys