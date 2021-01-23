PRODUCT_HOST_PACKAGES := \
    bios.bin \
    vgabios-cirrus.bin

PRODUCT_COPY_FILES := \
    device/brightsign/bs_generic/data/etc/config.ini:config.ini

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulator_vendor.mk)
$(call inherit-product, device/google/atv/products/atv_generic.mk)

ALLOW_MISSING_DEPENDENCIES := true
TARGET_SUPPORTS_32_BIT_APPS := true
TARGET_SUPPORTS_64_BIT_APPS := true
PRODUCT_SHIPPING_API_LEVEL := 28
PRODUCT_IS_ATV_SDK := true
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_CHARACTERISTICS := tv
PRODUCT_AAPT_PREF_CONFIG := tvdpi
PRODUCT_IS_ATV := true
DEVICE_PACKAGE_OVERLAYS := device/brightsign/bs_generic/overlay

PRODUCT_PACKAGES += \
    TvProvision \
    TvSampleLeanbackLauncher

PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

PRODUCT_COPY_FILES += \
    development/sys-img/advancedFeatures.ini:advancedFeatures.ini \
    device/generic/goldfish/data/etc/encryptionkey.img:encryptionkey.img \
    prebuilts/qemu-kernel/x86_64/4.14/kernel-qemu2:kernel-ranchu-64

PRODUCT_COPY_FILES += \
    device/brightsign/bs_generic/permissions/privapp-permissions-atv-gsi.xml:system/etc/permissions/privapp-permissions-atv-gsi.xml

PRODUCT_COPY_FILES += \
    system/core/rootdir/init.zygote64_32.rc:root/init.zygote64_32.rc

PRODUCT_ARTIFACT_PATH_REQUIREMENT_WHITELIST += \
    root/init.zygote64_32.rc

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.zygote=zygote64_32

PRODUCT_NAME := bs_generic
PRODUCT_DEVICE := bs_generic
PRODUCT_BRAND := BrightSign
PRODUCT_MODEL := BrightSign Generic on Emulator
