#
# Copyright (C) 2012 The Android Open-Source Project
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

# Overlays
DEVICE_PACKAGE_OVERLAYS := device/pantech/msm8660-common/overlay

#----------------------------------------------------------------------

# Audio policy
PRODUCT_COPY_FILES += \
    device/pantech/msm8660-common/prebuilt/system/etc/audio_policy.conf:system/etc/audio_policy.conf

# Bluetooth configuration files
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf

# Firmware
PRODUCT_COPY_FILES += \
    device/pantech/msm8660-common/prebuilt/system/etc/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
    device/pantech/msm8660-common/prebuilt/system/etc/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
    device/pantech/msm8660-common/prebuilt/system/etc/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
    device/pantech/msm8660-common/prebuilt/system/etc/firmware/a300_pfp.fw:system/etc/firmware/a300_pfp.fw \
    device/pantech/msm8660-common/prebuilt/system/etc/firmware/a300_pm4.fw:system/etc/firmware/a300_pm4.fw

# Media configuration
PRODUCT_COPY_FILES += \
    device/pantech/msm8660-common/media/media_profiles.xml:system/etc/media_profiles.xml \
    device/pantech/msm8660-common/media/media_codecs.xml:system/etc/media_codecs.xml

# Thermal configuration
PRODUCT_COPY_FILES += \
    device/pantech/msm8660-common/prebuilt/system/etc/thermald.conf:system/etc/thermald.conf

#----------------------------------------------------------------------

# fstab.qcom
PRODUCT_PACKAGES += fstab.qcom

# GPS
PRODUCT_PACKAGES += gps.msm8660

# Lpm
PRODUCT_PACKAGES += \
    lpm.rc \
    init.qcom.lpm_boot.sh

# Sensors
PRODUCT_PACKAGES += sensors.msm8660

#----------------------------------------------------------------------

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Common build properties
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    debug.composition.type=dyn \
    debug.egl.hw=1 \
    debug.enabletr=true \
    debug.mdpcomp.maxlayer=0 \
    debug.mdpcomp.logs=0 \
    debug.sf.hw=1 \
    dev.pm.dyn_samplingrate=1 \
    ro.sf.lcd_density=240 \
    ro.bt.bdaddr_path=/data/misc/bd_addr

# Misc
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15

#----------------------------------------------------------------------

# inherit pantech/qcom-common
$(call inherit-product-if-exists, device/pantech/qcom-common/qcom-common.mk)
