$(call inherit-product, device/samsung/jalte/full_jalte.mk)

# Inherit some common CM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := cm_jalte
PRODUCT_DEVICE := jalte

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SHV-E300 \
    PRODUCT_NAME=jaltexx \
    PRODUCT_DEVICE=jalte \
    TARGET_DEVICE=jalte \
    BUILD_FINGERPRINT="samsung/ja3gxx/ja3g:4.4.2/KOT49H/I9500XXUFNB3:user/release-keys" \
    PRIVATE_BUILD_DESC="ja3gxx-user 4.4.2 KOT49H I9500XXUFNB3 release-keys"
