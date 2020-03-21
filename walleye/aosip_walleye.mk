# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common AOSiP stuff.
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/walleye/aosp_walleye.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosip_walleye
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=walleye \
    PRIVATE_BUILD_DESC="walleye-user 10 QQ2A.200305.002 6138846 release-keys"

BUILD_FINGERPRINT := google/walleye/walleye:10/QQ2A.200305.002/6138846:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/walleye/walleye:10/QQ2A.200305.002/6138846:user/release-keys

$(call inherit-product-if-exists, vendor/google/walleye/walleye-vendor.mk)
$(call inherit-product-if-exists, vendor/pixelgapps/pixel-gapps.mk)
