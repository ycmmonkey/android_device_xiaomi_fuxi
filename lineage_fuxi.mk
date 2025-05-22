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

# UDFPS
TARGET_HAS_UDFPS := true
TARGET_EXCLUDE_AUDIOFX := true
# To include Gapps 
WITH_GMS := true

# To Build Google(Dailer, Message, Phone) and BCR
WITH_GMS_COMMS_SUITE := true

# To Add cinematic wallpaer support (only supported in gapps build not in vanilla remove this flag for vanilla builds)
TARGET_SUPPORTS_WALLEFFECT := true

#Some more GMS Flag
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_STOCK_AICORE := false

PRODUCT_DEVICE := fuxi
PRODUCT_NAME := lineage_fuxi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2211133C
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_SYSTEM_NAME := 2211133C
PRODUCT_SYSTEM_DEVICE := 2211133C

BUILD_FINGERPRINT := Xiaomi/fuxi/fuxi:15/AQ3A.240912.001/OS2.0.200.0.VMCCNXM:user/release-keys

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
