PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

$(call inherit-product, device/lge/msm7x27-common/device.mk)
$(call inherit-product-if-exists, vendor/lge/p500/p500-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/p500/overlay

# p500 configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thunder_keypad.kl:system/usr/keylayout/thunder_keypad.kl \
    $(LOCAL_PATH)/configs/thunder_keypad.kcm.bin:system/usr/keychars/thunder_keypad.kcm.bin \
    $(LOCAL_PATH)/configs/touch_mcs6000.idc:system/usr/idc/touch_mcs6000.idc

# p500 init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.p500.rc:root/init.p500.rc

# P500 Audio
PRODUCT_PACKAGES += \
    audio_policy.p500 \
    audio.primary.p500

# Full-featured build of the Open-Source
$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := p500
PRODUCT_DEVICE := p500
PRODUCT_MODEL := LG-P500

