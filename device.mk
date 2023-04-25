#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=ext4 \
    POSTINSTALL_OPTIONAL_vendor=true

RESOURCE_PATH := device/unihertz/gargoyle/

PRODUCT_COPY_FILES += \
	$(RESOURCE_PATH)/init/rumplestilzken_firstboot.sh:$(TARGET_COPY_OUT_SYSTEM)/bin/rumplestilzken_firstboot.sh \

PRODUCT_COPY_FILES += \
	$(RESOURCE_PATH)/input/excluded-input-devices.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/excluded-input-devices.xml \

#Copy keyboard files into place.
PRODUCT_COPY_FILES += \
  $(RESOURCE_PATH)/keyboard/system_usr_idc/aw9523-key.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/aw9523-key.idc \
	$(RESOURCE_PATH)/keyboard/system_usr_idc/mtk-kpd.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/mtk-kpd.idc \
	$(RESOURCE_PATH)/keyboard/system_usr_idc/mtk-pad.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/mtk-pad.idc \
	$(RESOURCE_PATH)/keyboard/system_usr_keychars/aw9523-key.kcm:$(TARGET_COPY_OUT_SYSTEM)/usr/keychars/aw9523-key.kcm \
	$(RESOURCE_PATH)/keyboard/system_usr_keylayout/Generic.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Generic.kl \
	$(RESOURCE_PATH)/keyboard/system_usr_keylayout/mtk-kpd.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/mtk-kpd.kl
