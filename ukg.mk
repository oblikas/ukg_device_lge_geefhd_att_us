#cdma
$(call inherit-product, vendor/ukg/config/common_cdma.mk)

#phone
$(call inherit-product, vendor/ukg/config/common_phone.mk)


# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/lge/geefhd_att_us/full_geefhd_att_us.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := geefhd_att_us
PRODUCT_NAME := ukg_geefhd_att_us
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-E980
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=google/occam/mako:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2.2 JDQ39 573038 release-keys"

# hybrid
PRODUCT_COPY_FILES += \
vendor/ukg/prebuilt/hybrid_m7_no_nav.conf:system/etc/beerbong/properties.conf
