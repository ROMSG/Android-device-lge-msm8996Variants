#
# Copyright 2016 The CyanogenMod Project
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
# These vary from rom to rom, change accordingly. 
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common rom stuff. Change the directory according to the rom.
$(call inherit-product, vendor/lineage/config/common.mk)

# Inherit from vs995 device
$(call inherit-product, device/lge/vs995/device.mk)

# Set those variables here to overwrite the inherited values.
# Change PRODUCT_NAME according to your rom
PRODUCT_DEVICE := vs995
PRODUCT_NAME := lineage_vs995 
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-VS995
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="elsa" \
    PRODUCT_DEVICE="elsa" \
    PRODUCT_NAME="elsa_vzw_us" \
    PRIVATE_BUILD_DESC="elsa_vzw-user 8.0.0 OPR1.170623.032 183141449275f release-keys"

BUILD_FINGERPRINT := "lge/elsa_vzw/elsa:8.0.0/OPR1.170623.032/183141449275f:user/release-keys"
