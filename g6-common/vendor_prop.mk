# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.sf.color_saturation=1.1

# HDR
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qcom.hdr.config=/system/vendor/etc/hdr_tm_config.xml
    
# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.post_boot.parsed=1

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    media.settings.xml=/vendor/etc/media_profiles_vendor.xml
