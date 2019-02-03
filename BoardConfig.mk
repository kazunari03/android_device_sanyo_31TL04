#
# Copyright (C) 2011 The Android Open-Source Project
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

# These two variables are set first, so they can be overridden
# by BoardConfigVendor.mk

-include vendor/sanyo/AndroidVendor.mk

BOARD_USES_GENERIC_AUDIO := true
USE_CAMERA_STUB := true

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := false
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_HAVE_BLUETOOTH := false
TARGET_NO_BOOTLOADER := true
TARGET_NO_RECOVERY := true
TARGET_NO_KERNEL := true

TARGET_NO_RADIOIMAGE := true
TARGET_BOOTLOADER_BOARD_NAME := BEJ

BOARD_EGL_CFG := device/sanyo/BEJ/egl.cfg

#BOARD_USES_HGL := true
#BOARD_USES_OVERLAY := true
USE_OPENGL_RENDERER := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 268435456
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 16777216
BOARD_USERDATAIMAGE_PARTITION_SIZE := 536870912
BOARD_FLASH_BLOCK_SIZE := 4096

#TARGET_PROVIDES_INIT_RC := true
#TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

# WiFi(testing)
WIFI_DRIVER_MODULE_NAME := "wlan0"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/lib/module/sd8787_uapsta.bin cfg80211_wext=12 sta_name=wlan uap_name=wlan wfd_name=p2p fw_name=sd8787_uapsta.bin"
WIFI_DRIVER_MODULE_PATH := "/system/lib/module/sd8787.ko"

WIFI_DRIVER_FW_PATH_P2P := "/system/etc/wifi/sd8787_uapsta.bin"
WIFI_SDIO_IF_DRIVER_MODULE_PATH := "/system/wifi/mlan.ko"
WIFI_SDIO_IF_DRIVER_MODULE_NAME := "mlan"
WIFI_SDIO_IF_DRIVER_MODULE_ARG := ""
