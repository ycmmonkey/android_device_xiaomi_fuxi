#
# Copyright (C) 2024 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8550-common
$(call inherit-product, device/xiaomi/sm8550-common/common.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/xiaomi/fuxi/fuxi-vendor.mk)

# Camera
$(call inherit-product-if-exists, vendor/xiaomi/camera/miuicamera.mk)

# ViperX
$(call inherit-product, vendor/xiaomi/ViPER4AndroidFX/config.mk)

# BCR
# $(call inherit-product, vendor/bcr/bcr.mk)

# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init/init.fuxi.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.fuxi.rc \

# Euicc
# PRODUCT_PACKAGES += \
#     XiaomiEuicc

# PRODUCT_COPY_FILES += \
#     frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml

# Overlay
PRODUCT_PACKAGES += \
    ApertureResFuxi \
    FrameworkResOverlayFuxi \
    SystemUIOverlayFuxi \
    SettingsOverlayFuxi \
    WifiOverlayFuxi

# Sensors
PRODUCT_PACKAGES += \
    sensors.xiaomi.v2

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/hals.conf:$(TARGET_COPY_OUT_ODM)/etc/sensors/hals.conf

# PowerShare
PRODUCT_PACKAGES += \
    vendor.lineage.powershare@1.0-service.default

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
