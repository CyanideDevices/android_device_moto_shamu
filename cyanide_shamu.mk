# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common CYANIDE stuff.
#$(call inherit-product, vendor/cyanide/config/common_full_phone.mk)

# Enhanced NFC
#$(call inherit-product, vendor/cyanide/config/nfc_enhanced.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Inherit cyanide common configuration
$(call inherit-product, vendor/cyanide/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cyanide_shamu
PRODUCT_DEVICE := shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola
PRODUCT_RESTRICT_VENDOR_FILES := false

TARGET_VENDOR := moto

# Kernel inline build
KERNEL_TOOLCHAIN := "$(ANDROID_BUILD_TOP)/prebuilts/gcc/$(strip $(HOST_OS))-x86/arm/arm-eabi-4.8/bin/"
TARGET_KERNEL_SOURCE := kernel/moto/shamu
TARGET_KERNEL_CONFIG := shamu_defconfig
#TARGET_VARIANT_CONFIG := shift_defconfig
#TARGET_SELINUX_CONFIG := shift_defconfig

$(call inherit-product, device/moto/shamu/device.mk)
$(call inherit-product-if-exists, vendor/moto/shamu/device-vendor.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:7.0/NBD91P/3397968:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 7.0 NBD91P 3397968 release-keys"
