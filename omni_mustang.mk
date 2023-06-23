$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_COPY_FILES += device/amazon/mustang/prebuilt/zImage:kernel
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/amazon/mustang/recovery/root,recovery/root)
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/amazon/mustang/prebuilt,prebuilt)
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/amazon/mustang/prebuilt,out/target/product/mustang/kernel/prebuilt)

PRODUCT_NAME := omni_mustang
PRODUCT_DEVICE := mustang
PRODUCT_BRAND := Android
PRODUCT_MANUFACTURER := Amazon

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp
