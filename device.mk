#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8550-common
$(call inherit-product, device/xiaomi/sm8550-common/common.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/xiaomi/fuxi/fuxi-vendor.mk)

# Camera
$(call inherit-product-if-exists, vendor/xiaomi/camera/miuicamera.mk)

# BCR
$(call inherit-product, vendor/bcr/bcr.mk)

$(call soong_config_set,surfaceflinger,frame_rate_category_high,120)
$(call soong_config_set,surfaceflinger,frame_rate_category_min,60)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths_kalama_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_kalama/mixer_paths_kalama_mtp.xml \
    $(LOCAL_PATH)/configs/audio/resourcemanager_kalama_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_kalama/resourcemanager_kalama_mtp.xml

# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init/init.fuxi.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.fuxi.rc

$(call soong_config_set,libinit,vendor_init_lib,//$(LOCAL_PATH):libinit_fuxi)

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage

PRODUCT_PACKAGES += \
    FrameworkResOverlayFuxi \
    FuxiWifiRes \
    SystemUIOverlayFuxi \
    SettingsProviderResfuxi \
    SettingsOverlayFuxi

# PowerShare
$(call soong_config_set,lineage_powershare,powershare_path,/sys/class/qcom-battery/reverse_chg_mode)
PRODUCT_PACKAGES += \
    vendor.lineage.powershare-service.default

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
