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

LOCAL_PATH := device/softwinners/apollo_mele

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := sun4i
TARGET_BOOTLOADER_BOARD_NAME := crane

# Kernel
TARGET_KERNEL_SOURCE := kernel/allwinner/sunxi
TARGET_KERNEL_CONFIG := cyanogenmod_apollo_mele_defconfig
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/recovery/init.rc

BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048

# Partitons
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 335544320
BOARD_USERDATAIMAGE_PARTITION_SIZE := 536870912
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_USERIMAGES_USE_EXT4 := true

# Graphics
BOARD_EGL_CFG := $(LOCAL_PATH)/config/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_USE_SKIA_LCDTEXT := true

# Enable WEBGL in WebKit
ENABLE_WEBGL := true

# HWComposer
BOARD_USES_HWCOMPOSER := true

# Camera
USE_CAMERA_STUB := true

# Wifi
BOARD_WIFI_VENDOR				 := realtek
BOARD_WLAN_DEVICE                := rtl8192cu
BOARD_WPA_SUPPLICANT_DRIVER 	 := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_rtl
BOARD_HOSTAPD_DRIVER 			 := WEXT
BOARD_HOSTAPD_PRIVATE_LIB 		 := lib_driver_cmd_rtl
WPA_SUPPLICANT_VERSION           := VER_0_8_X
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/8192cu.ko"
WIFI_DRIVER_MODULE_NAME          := "8192cu"
WIFI_DRIVER_MODULE_ARG           := ""
WIFI_DRIVER_FW_PATH_STA          := ""
WIFI_DRIVER_FW_PATH_AP           := ""
WIFI_DRIVER_FW_PATH_P2P          := ""
WIFI_BAND                        := 802_11_ABG
TARGET_CUSTOM_WIFI 				 := ../../hardware/realtek/wlan/wifi_realtek.c

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# Recovery
BOARD_CUSTOM_GRAPHICS := ../../../device/softwinners/apollo_mele/recovery/graphics.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/softwinners/apollo_mele/recovery/recovery_keys.c
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
BOARD_UMS_2ND_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun1/file"
TARGET_RECOVERY_PRE_COMMAND := "echo -n boot-recovery | busybox dd of=/dev/block/nandf count=1 conv=sync; sync"
BOARD_HAS_LARGE_FILESYSTEM := true

# inherit from the proprietary version
-include vendor/softwinners/apollo_mele/BoardConfigVendor.mk
