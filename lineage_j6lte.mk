# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from j6lte device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := j6lte
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_j6lte
PRODUCT_MODEL := SM-J600GT

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := j6lte
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="j6ltedtvvj-user 9 PPR1.180610.011 J600GTVJU7BTB2 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/j6ltedtvvj/j6lte:9/PPR1.180610.011/J600GTVJU7BTB2:user/release-keys
