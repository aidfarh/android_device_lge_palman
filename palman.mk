# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

PRODUCT_NAME := full_palman
PRODUCT_DEVICE := palman
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-V510
PRODUCT_MANUFACTURER := LGE

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lge/palman/device.mk)
$(call inherit-product-if-exists, vendor/lge/palman/palman-vendor.mk)
