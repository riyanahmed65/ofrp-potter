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

LOCAL_PATH := device/motorola/potter

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_CPU_CORTEX_A53 := true

TARGET_BOARD_PLATFORM := msm8953
TARGET_BOARD_PLATFORM_GPU := qcom-adreno506

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8953
TARGET_NO_BOOTLOADER := true


# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=30 msm_rtb.filter=0x237
BOARD_KERNEL_CMDLINE += ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 vmalloc=350M loop.max_part=16
#BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_SEPARATED_DT := true
TARGET_CUSTOM_DTBTOOL := dtbTool_custom
TARGET_KERNEL_ARCH := arm64
BOARD_DTBTOOL_ARGS := --force-v3
#TARGET_KERNEL_CLANG_VERSION := proton 	#added
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CONFIG := potter_defconfig
TARGET_KERNEL_SOURCE := kernel/motorola/msm8953
TARGET_KERNEL_CLANG_COMPILE := true
LZMA_RAMDISK_TARGETS := recovery
# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072 
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216        #    16384 * 1024 mmcblk0p37
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16879616    #    16484 * 1024 mmcblk0p38
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3510353920    #  3428080 * 1024 mmcblk0p53
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26401026048 # 25782252 * 1024 mmcblk0p54
BOARD_CACHEIMAGE_PARTITION_SIZE := 260014080      #   253920 * 1024 mmcblk0p52

# Filesystems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Treble (trkzmn)
BOARD_USES_VENDORIMAGE := true 
TARGET_COPY_OUT_VENDOR := vendor
BOARD_NEEDS_VENDORIMAGE_SYMLINK := false

# Recovery
TARGET_RECOVERY_FSTAB := device/motorola/potter/twrp.fstab
BOARD_SUPPRESS_SECURE_ERASE := true

# TWRP Configuration
TW_THEME := portrait_hdpi
TW_MAX_BRIGHTNESS := 255
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_SCREEN_BLANK_ON_BOOT := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
RECOVERY_SDCARD_ON_DATA := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_INCLUDE_NTFS_3G := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TWRP_INCLUDE_LOGCAT := true

# Save Some Space for OrangeFox
BOARD_HAS_NO_REAL_SDCARD := true
TW_EXCLUDE_TWRPAPP := true
TW_EXCLUDE_SUPERSU := true

# Encryption
#TARGET_HW_DISK_ENCRYPTION := true
#TW_INCLUDE_CRYPTO := true
#TARGET_KEYMASTER_WAIT_FOR_QSEE := true
#TW_CRYPTO_USE_SYSTEM_VOLD := qseecomd
