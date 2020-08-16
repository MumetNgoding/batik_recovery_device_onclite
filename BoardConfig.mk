##
# Copyright (C) 2019 The TwrpBuilder Open-Source Project
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

LOCAL_PATH := device/xiaomi/onclite

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8953
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8953
TARGET_BOARD_PLATFORM_GPU := qcom-adreno506

# Kernel
BOARD_KERNEL_CMDLINE := \
    console=ttyMSM0,115200,n8 androidboot.console=ttyMSM0 \
    androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 \
    lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci \
    earlycon=msm_serial_dm,0x78af000 firmware_class.path=/vendor/firmware_mnt/image \
    androidboot.usbconfigfs=true loop.max_part=7 \
    androidboot.selinux=permissive

BOARD_KERNEL_IMAGE_NAME      := Image.gz-dtb
BOARD_KERNEL_BASE            := 0x80000000
BOARD_KERNEL_PAGESIZE        := 2048
BOARD_KERNEL_OFFSET          := 0x00008000
BOARD_RAMDISK_OFFSET         := 0x01000000
BOARD_SECOND_OFFSET          := 0x00f00000
BOARD_KERNEL_TAGS_OFFSET     := 0x00000100
BOARD_BOOTIMG_HEADER_VERSION := 1

BOARD_INCLUDE_RECOVERY_DTBO  := true

TARGET_PREBUILT_KERNEL       := $(LOCAL_PATH)/prebuilt/Image.gz-dtb
BOARD_PREBUILT_DTBOIMAGE     := $(LOCAL_PATH)/prebuilt/dtbo.img

BOARD_MKBOOTIMG_ARGS := \
    --ramdisk_offset $(BOARD_RAMDISK_OFFSET) \
    --tags_offset $(BOARD_KERNEL_TAGS_OFFSET) \
    --header_version $(BOARD_BOOTIMG_HEADER_VERSION)

# Assert
TARGET_OTA_ASSERT_DEVICE := onclite,onc

# Android Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_USERDATAIMAGE_PARTITION_SIZE := 24222088704
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3758096384
BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824

# System as root
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# File systems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Crypto
TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/commonsys/cryptfs_hw
TARGET_HW_DISK_ENCRYPTION := true

# Recovery
TW_THEME := portrait_hdpi
#TW_Y_OFFSET := 57
#TW_H_OFFSET := -57
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 102
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := en
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_NO_USB_STORAGE := true
TW_SKIP_COMPATIBILITY_CHECK := true
TW_INCLUDE_FUSE_EXFAT := true
TW_INCLUDE_FUSE_NTFS := true
TW_USE_TOOLBOX := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_HAS_EDL_MODE := true
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TW_EXCLUDE_TWRPAPP := true
TW_EXCLUDE_SUPERSU := true

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# LZMA ramdisk compression
LZMA_RAMDISK_TARGETS := recovery
LZMA_COMPRESSION := -9
