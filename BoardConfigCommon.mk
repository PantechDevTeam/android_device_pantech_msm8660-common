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

USE_CAMERA_STUB := true

BOARD_VENDOR := pantech

# inherit from pantech qcom-common
-include device/pantech/qcom-common/BoardConfigCommon.mk

#----------------------------------------------------------------------

# Architecture
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Audio
#BOARD_USES_ALSA_AUDIO := true
#TARGET_QCOM_AUDIO_VARIANT := caf

# Bluetooth
TARGET_NEEDS_BLUETOOTH_INIT_DELAY := true

# Board info
BOARD_HAS_NO_MISC_PARTITION := true

# Charging mode
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging

# Flags
COMMON_GLOBAL_CFLAGS += -DWITH_QCOM_LPA
COMMON_GLOBAL_CFLAGS += -DQCOM_ACDB_ENABLED
COMMON_GLOBAL_CFLAGS += -DQCOM_VOIP_ENABLED
COMMON_GLOBAL_CFLAGS += -DLEGACY_QCOM_VOICE

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
TARGET_NO_RPC := true

# Graphics
#BOARD_HAVE_OLD_ION_API := true
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK
TARGET_NO_HW_VSYNC := true
#TARGET_QCOM_DISPLAY_VARIANT := caf

# Overlay
TARGET_USES_OVERLAY := true

# Platform
TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# QCOM Scorpion optimizations
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128

# Radio info
TARGET_NO_RADIOIMAGE := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# Time - Add support for kernel user helpers and gettimeofday() in bionic
#KERNEL_HAS_GETTIMEOFDAY_HELPER := true

# Compile tiny android by default
#BUILD_TINY_ANDROID := true
