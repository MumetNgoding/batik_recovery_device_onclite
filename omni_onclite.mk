#
# Copyright (C) 2017 The Android Open Source Project
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
#

# Release name
PRODUCT_RELEASE_NAME := onclite

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from our custom product configuration
$(call inherit-product, device/xiaomi/onclite/recovery.mk)
$(call inherit-product, vendor/pb/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := onclite
PRODUCT_NAME := omni_onclite
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 7/Y3
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="onc" \
    BUILD_PRODUCT="onclite" \
    PRIVATE_BUILD_DESC="onc-user 10 QKQ1.191008.001 V11.0.2.0.QFLCNXM release-keys"

BUILD_FINGERPRINT := "xiaomi/onc/onc:10/QKQ1.191008.001/V11.0.2.0.QFLCNXM:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_PROPERTY_OVERRIDES += \
    ro.treble.enabled=true \
    ro.vendor.build.security_patch=2099-12-31 \
    persist.sys.isUsbOtgEnabled=true \
    ro.hardware.keystore=msm8953 \
    ro.hardware.keystore_desede=true

PRODUCT_COPY_FILES += \
    system/timezone/output_data/iana/tzdata:recovery/root/system_root/system/usr/share/zoneinfo/tzdata
