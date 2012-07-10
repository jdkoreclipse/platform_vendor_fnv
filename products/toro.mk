# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit common product files.
$(call inherit-product, vendor/fnv/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := fnv_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mysid BUILD_ID=ICL53F BUILD_FINGERPRINT=google/mysid/toro:4.0.4/IMM76K/336647:user/release-keys PRIVATE_BUILD_DESC="mysid-user 4.0.4 IMM76K 336647 release-keys" BUILD_NUMBER=235179

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

#random 
PRODUCT_PACKAGES := \
    Camera \
    Gallery2 \
    Stk 

# Blobs necessary for drm
PRODUCT_COPY_FILES +=  \
   vendor/fnv/proprietary/common/lib/libfrsdk.so:system/lib/libfrsdk.so \
    vendor/fnv/proprietary/common/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
    vendor/fnv/proprietary/common/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
   vendor/fnv/proprietary/common/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
    vendor/fnv/proprietary/common/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so 

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/fnv/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/fnv/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/fnv/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd 





