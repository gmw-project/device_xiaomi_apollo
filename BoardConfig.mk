#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm8250-common
-include device/xiaomi/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/apollo

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Display
TARGET_SCREEN_DENSITY := 440

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_apollo
TARGET_RECOVERY_DEVICE_MODULES := libinit_apollo

# Kernel
include device/xiaomi/apollo-kernel/BoardConfigKernel.mk
TARGET_KERNEL_CONFIG := vendor/apollo_defconfig

# Properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop

# inherit from the proprietary version
-include vendor/xiaomi/apollo/BoardConfigVendor.mk
