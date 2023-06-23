$(call inherit-product, build/target/product/full_base_telephony.mk)


# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)/

PRODUCT_COPY_FILES += \
    $(OUT_DIR)/target/product/$(PRODUCT_RELEASE_NAME)/obj/SHARED_LIBRARIES/libandroidicu_intermediates/libandroidicu.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib/libandroidicu.so
