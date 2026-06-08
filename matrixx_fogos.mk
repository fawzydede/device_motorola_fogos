#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from fogos device
$(call inherit-product, device/motorola/fogos/device.mk)

# Inherit motocamera
$(call inherit-product, vendor/motorola/motocamera/motocamera.mk)

# Inherit some common Matrixx stuff.
$(call inherit-product, vendor/matrixx/config/common_full_phone.mk)

# Matrixx
MATRIXX_MAINTAINER := Lightqueen|麥克寧
WITH_GMS := true
WITH_EXTRA_GAPPS := true
WITH_GMS_COMMS_SUITE := true
$(call soong_config_set,surfaceflinger,frame_rate_category_high,120)
$(call soong_config_set,surfaceflinger,frame_rate_category_min,60)

PRODUCT_NAME := matrixx_fogos
PRODUCT_DEVICE := fogos
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g34 5G

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="fogos_g-user 15 V1UGS35H.75-14-3-8 4be56-0d815a release-keys MV-186" \
    BuildFingerprint=motorola/fogos_g/fogos:15/V1UGS35H.75-14-3-8/4be56-0d815a:user/release-keys \
    DeviceProduct=fogos_g
