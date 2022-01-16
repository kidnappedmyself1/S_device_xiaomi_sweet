# Inherit common products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit common AOSP configurations
$(call inherit-product, vendor/potato/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
USE_PIXEL_CHARGING := true
TARGET_USES_BLUR := true
TARGET_GAPPS_ARCH := arm64

PRODUCT_NAME := potato_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 12 SQ1D.220105.007 8030436 release-keys"

BUILD_FINGERPRINT := google/raven/raven:12/SQ1D.220105.007/8030436:user/release-keys"


WITH_GAPPS := true


