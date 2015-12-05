# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common VR stuff.
$(call inherit-product, vendor/vrtoxin/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/vrtoxin/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

#DEVICE_PACKAGE_OVERLAYS += device/moto/shamu/overlay-vrtoxin
DEVICE_PACKAGE_OVERLAYS += device/moto/shamu/overlay-cm

## Device identifier. This must come after all inclusions
PRODUCT_NAME := vrtoxin_shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6

TARGET_VENDOR := motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:6.0/MRA58N/2289998:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 6.0 MRA58N 2289998 release-keys"
