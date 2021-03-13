#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm8250-common
-include device/xiaomi/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/apollopro

# Assert
TARGET_OTA_ASSERT_DEVICE := apollo,apollopro

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Display
TARGET_SCREEN_DENSITY := 440

# Kernel
ifeq ($(TARGET_USES_PREBUILT_KERNEL), true)
-include device/xiaomi/apollopro-kernel/BoardConfigKernel.mk
else
TARGET_KERNEL_CONFIG := vendor/apollopro_defconfig
endif

# Properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_apollopro
TARGET_RECOVERY_DEVICE_MODULES := libinit_apollopro

# inherit from the proprietary version
-include vendor/xiaomi/apollopro/BoardConfigVendor.mk
