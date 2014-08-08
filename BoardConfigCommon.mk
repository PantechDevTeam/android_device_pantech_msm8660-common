#
# Copyright (C) 2012 The Android Open Source Project
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

#----------------------------------------------------------------------

BOARD_VENDOR := pantech

# inherit from pantech msm8x60-common
-include device/pantech/msm8x60-common/BoardConfigCommon.mk

#----------------------------------------------------------------------

# Architecture
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_VARIANT := scorpion
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true

# Audio
BOARD_QCOM_TUNNEL_LPA_ENABLED := true
BOARD_QCOM_VOIP_ENABLED := true
#BOARD_USES_ALSA_AUDIO := false

# Bluetooth
TARGET_NEEDS_BLUETOOTH_INIT_DELAY := true

# Board info
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USES_MMCUTILS := true

# Flags
#COMMON_GLOBAL_CFLAGS += -DQCOM_ACDB_ENABLED
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm8660
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
#TARGET_NO_RPC := true

# Graphics
#COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK
#TARGET_NO_HW_VSYNC := true

# Platform
TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Power/Charger
BOARD_CHARGER_RES := device/pantech/msm8660-common/charger
#BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
#BOARD_BATTERY_DEVICE_NAME := "battery"
TARGET_POWERHAL_VARIANT := cm

# Target info
TARGET_DISPLAY_INSECURE_MM_HEAP := true
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL     := false
TARGET_NO_RADIOIMAGE := true
#TARGET_USES_OVERLAY := true
TARGET_USES_QCOM_BSP := true

# Time - Add support for kernel user helpers and gettimeofday() in bionic
#KERNEL_HAS_GETTIMEOFDAY_HELPER := true

# Add QC Video Enhancements flag
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
