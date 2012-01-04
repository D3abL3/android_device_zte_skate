# Copyright (C) 2007 The Android Open Source Project
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

# config.mk
#
# Product-specific compile-time definitions.
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := false

# Arch related defines
TARGET_BOARD_PLATFORM := msm7x27
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi

# Board related defines
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_BOOTLOADER_BOARD_NAME := skate

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=skate console=null
BOARD_KERNEL_BASE := 0x02600000

# FM radio 
# BOARD_HAVE_FM_RADIO := true
# BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
# BOARD_FM_DEVICE := si4708

# RIL
BOARD_PROVIDES_LIBRIL := true

# Audio
BOARD_PROVIDES_LIBAUDIO := true
BOARD_USES_GENERIC_AUDIO := false

# Camera
BOARD_CAMERA_USE_GETBUFFERINFO := true
BOARD_USE_CAF_LIBCAMERA := true

# Wifi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
# I know we have the bcm4319 but this is a hack to get around incompatibility with the BCM4319
BOARD_WLAN_DEVICE := bcm4329
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := WEXT
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_wext
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/fw_4319_apsta.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/fw_4319.bin"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/fw_4319.bin,nvram_path=/system/etc/nv_4319.txt iface_name=wlan"
WIFI_DRIVER_MODULE_NAME := "dhd"

# Browser
WITH_JIT := false
ENABLE_JSC_JIT := false
JS_ENGINE := jsc
HTTP := android

# Sensors
BOARD_VENDOR_USE_AKMD := akm8962
BOARD_USE_LEGACY_TOUCHSCREEN := true
 
# Graphics
BOARD_EGL_CFG := device/zte/skate/prebuilt/lib/egl/egl.cfg
COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_EXTERNAL_IMAGE -DMISSING_EGL_PIXEL_FORMAT_YV12 -DMISSING_GRALLOC_BUFFERS -DQCOM_HARDWARE -DREFRESH_RATE=60
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true
BOARD_OVERLAY_FORMAT_YCbCr_420_SP := true
BOARD_OVERLAY_MINIFICATION_LIMIT := 2
BOARD_USES_OVERLAY := true
BOARD_HAS_FLIPPED_SCREEN := true
TARGET_SPECIFIC_HEADER_PATH := device/zte/skate/include
BOARD_EGL_GRALLOC_USAGE_FILTER := true
COPYBIT_MSM7K := true

# GPS
#BOARD_USES_QCOM_HARDWARE := true
#BOARD_USES_QCOM_LIBS := true
#BOARD_USES_QCOM_GPS := true
#BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := skate

# USB 
BOARD_CUSTOM_USB_CONTROLLER := ../../device/zte/skate/UsbController.cpp
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/vold/179:1
BOARD_SDEXT_DEVICE := /dev/block/vold/179:2
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH  := "/sys/devices/platform/msm_hsusb/gadget/lun0/file

# Recovery
BOARD_DATA_DEVICE := /dev/block/mtdblock6
BOARD_DATA_FILESYSTEM := auto
BOARD_DATA_FILESYSTEM_OPTIONS := rw
BOARD_SYSTEM_DEVICE := /dev/block/mtdblock5
BOARD_SYSTEM_FILESYSTEM := auto
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw
BOARD_CACHE_DEVICE := /dev/block/mtdblock4
BOARD_CACHE_FILESYSTEM := auto
BOARD_CACHE_FILESYSTEM_OPTIONS := rw
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/zte/skate/recovery/recovery_keys.c
BOARD_CUSTOM_GRAPHICS := ../../../device/zte/skate/recovery/graphics.c

TARGET_PREBUILT_RECOVERY_KERNEL := device/zte/skate/recovery_kernel

# # cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00600000 00020000 "recovery"
# mtd1: 00400000 00020000 "boot"
# mtd2: 00180000 00020000 "splash"
# mtd3: 00080000 00020000 "misc"
# mtd4: 03980000 00020000 "cache"
# mtd5: 0dc00000 00020000 "system"
# mtd6: 0a280000 00020000 "userdata"
# mtd7: 00100000 00020000 "oem"
# mtd8: 00180000 00020000 "persist"

# Image file stuff
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x0dc00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a280000
BOARD_FLASH_BLOCK_SIZE := 131072
