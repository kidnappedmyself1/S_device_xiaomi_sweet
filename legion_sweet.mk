# Inherit common products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit common Legion OS configurations
$(call inherit-product, vendor/legion/config/common_full_phone.mk)

PRODUCT_NAME := legion_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi
TARGET_BOOT_ANIMATION_RES := 1080
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Legion OS Stuffs

PRODUCT_PROPERTY_OVERRIDES += \
    ro.maintainer.name=mrfox2003
LEGION_MAINTAINER := mrfox2003
TARGET_FACE_UNLOCK_SUPPORTED := true