#
# Copyright 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from h870ds device
$(call inherit-product, device/lge/h870ds/device.mk)

# Security patch level
PLATFORM_SECURITY_PATCH_OVERRIDE := 2019-05-01
	
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH_OVERRIDE)

# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := h870ds
PRODUCT_NAME := lineage_h870ds
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-H870DS
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="lucye" \
    PRODUCT_DEVICE="lucye" \
    PRODUCT_NAME="lucye_global_com" \
    PRIVATE_BUILD_DESC="lucye_global_com-user 9 PKQ1.190522.001 192632011c72d release-keys"

BUILD_FINGERPRINT := "lge/lucye_global_com/lucye:9/PKQ1.190522.001/192632011c72d:user/release-keys"
