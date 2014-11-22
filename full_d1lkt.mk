# Copyright (C) 2013 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

PRODUCT_NAME := full_d1lkt
PRODUCT_DEVICE := d1lkt
PRODUCT_BRAND := Android
PRODUCT_MODEL := CM on d1lkt
PRODUCT_MANUFACTURER := LGE

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, hardware/qcom/msm8960/msm8960.mk)
$(call inherit-product, device/lge/d1lkt/device.mk)
$(call inherit-product-if-exists, vendor/lge/d1lkt/d1lkt.mk)
