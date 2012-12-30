#
# Copyright (C) 2012 The CyanogenMod Project
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

# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := apollo-mele

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/softwinners/apollo_mele/full_apollo_mele.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := apollo_mele
PRODUCT_NAME := cm_apollo_mele
PRODUCT_BRAND := softwinners
PRODUCT_MODEL := Rikomagic MK802II
PRODUCT_MANUFACTURER := rikomagic

# Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=apollo-mele TARGET_DEVICE=apollo_mele BUILD_FINGERPRINT=softwinners/apollo_mele/apollo-mele:4.0.4/IMM76D/20120811:eng/test-keys PRIVATE_BUILD_DESC="apollo_mele-eng 4.0.4 IMM76D 20120811 test-keys"
