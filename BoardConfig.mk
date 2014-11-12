# Copyright 2013 The Android Open Source Project
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

#Platform
TARGET_BOARD_PLATFORM := msm8960

#Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true

#Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

#Bootloader, Kernel, Ramdisk
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY := true
TARGET_NO_KERNEL := false
TARGET_BOOTLOADER_BOARD_NAME := D1LKT
BOARD_KERNEL_BOOTIMG := true
BOARD_KERNEL_BASE := 0x80200000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x88f10860
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=d1lkt lpj=676678
BOARD_KERNEL_PAGESIZE := 2048
USE_OPENGL_RENDERER := true

#Audio
#BOARD_USES_GENERIC_AUDIO := false
#BOARD_USES_ALSA_AUDIO := true
#BOARD_USES_LEGACY_ALSA_AUDIO:= false
#USE_PROPRIETARY_AUDIO_EXTENSIONS := false

#Bluetooth
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/d1lkt/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true

#Build Prop
#TARGET_SYSTEM_PROP := device/lge/d1lkt/build.prop

#WLAN
BOARD_HAS_QCOM_WLAN := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
HOSTAPD_VERSION := VER_0_8_X
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_MODULE_ARG := ""
WIFI_DRIVER_MODULE_NAME := "wlan"
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
WPA_SUPPLICANT_VERSION := VER_0_8_X

#GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240

TARGET_NO_RPC := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_CHARGER_ENABLE_SUSPEND := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 16777214
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13941866496
BOARD_CACHEIMAGE_PARTITION_SIZE := 276824064

BOARD_EGL_CFG := device/lge/d1lkt/egl.cfg

#Hack
MR0_CAMERA_BLOB := true
