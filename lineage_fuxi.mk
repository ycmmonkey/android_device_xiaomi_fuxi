#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common AOSP configurations
$(call inherit-product, build/make/target/product/full_base_telephony.mk)
$(call inherit-product, build/make/target/product/core_64_bit.mk)

# Inherit device-specific configurations
$(call inherit-product, device/xiaomi/fuxi/device.mk)

# Inherit LineageOS configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_DEVICE := fuxi
PRODUCT_NAME := lineage_fuxi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2211133C
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := Xiaomi/fuxi/fuxi:15/AQ3A.240912.001/OS2.0.215.0.VMCCNXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_OPTIMIZED_DEXOPT := true
WITH_GMS := true
TARGET_USES_CORE_GAPPS := true
TARGET_SUPPORTS_GOOGLE_TELEPHONY := false
WITH_BCR := true
TARGET_CUSTOM_UDFPS := true
TARGET_BOOT_ANIMATION_RES := 1080

