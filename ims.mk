#
# SPDX-FileCopyrightText: MillenniumOSS
# SPDX-License-Identifier: Apache-2.0
#

IMS_VNDR_PATH := vendor/mediatek/ims

# Inherit IMS vendor
$(call inherit-product, vendor/mediatek/ims/ims-vendor.mk)

# MediaTek Frameworks
# $(call inherit-product, hardware/mediatek/frameworks/mediatek-frameworks.mk)

# Permissions
PRODUCT_COPY_FILES += \
    $(IMS_VNDR_PATH)/configs/permissions/privapp-permissions-com.mediatek.ims.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-com.mediatek.ims.xml \
    $(IMS_VNDR_PATH)/configs/permissions/privapp-permissions-com.mediatek.telephony.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-com.mediatek.telephony.xml \
    $(IMS_VNDR_PATH)/configs/sysconfig/com.mediatek.ims.config.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/com.mediatek.ims.config.xml \
    $(IMS_VNDR_PATH)/configs/permissions/mediatek-ims-base.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/mediatek-ims-base.xml \
    $(IMS_VNDR_PATH)/configs/permissions/mediatek-ims-common.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/mediatek-ims-common.xml \
    $(IMS_VNDR_PATH)/configs/permissions/mediatek-telecom-common.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/mediatek-telecom-common.xml \
    $(IMS_VNDR_PATH)/configs/permissions/mediatek-telephony-base.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/mediatek-telephony-base.xml \
    $(IMS_VNDR_PATH)/configs/permissions/mediatek-telephony-common.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/mediatek-telephony-common.xml

# libui_shim
PRODUCT_PACKAGE += \
    libui_shim

DEVICE_PACKAGE_OVERLAYS += \
    $(IMS_VNDR_PATH)/rro_overlays

# MTK IMS Overlays
PRODUCT_PACKAGES += \
    mtk-ims \
    mtk-ims-telephony
