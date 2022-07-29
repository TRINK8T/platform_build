#!/bin/bash
#
# Copyright (C) 2021 TheHitMan7 (Kartik Verma)
#

# Clone this script in your ROM repository using following commands
# cd repository
# curl https://raw.githubusercontent.com/TRINK8T/platform_build/11.0/build-setup.sh > build-setup.sh
#
# Install dependencies using following commands
# chmod +x build-setup.sh
# . build-setup.sh

# Custom OS Vendor
SYBERIA="false" && [ -d "vendor/syberia" ] && SYBERIA="true"
NITROGEN="false" && [ -d "vendor/nitrogen" ] && NITROGEN="true"

# Remove Syberia OS dependencies
rm -rf device/xiaomi/syberia
$SYBERIA && rm -rf device/qcom/sepolicy_vndr
$SYBERIA && rm -rf device/google/redbull/powerstats
$SYBERIA && rm -rf vendor/syberia

# Remove Nitrogen OS dependencies
rm -rf device/xiaomi/nitrogen
$NITROGEN && rm -rf device/qcom/sepolicy_vndr
$NITROGEN && rm -rf packages/apps/NitrogenSettings

# Remove Nitrogen OS Hardware dependencies
$NITROGEN && rm -rf hardware/libhardware
$NITROGEN && rm -rf system/libhwbinder
$NITROGEN && rm -rf vendor/qcom/opensource/interfaces

# Remove common dependencies
rm -rf device/xiaomi/ginkgo
rm -rf vendor/xiaomi/ginkgo
rm -rf vendor/miuicamera
rm -rf hardware/qcom-caf/sm8150/display
rm -rf vendor/qcom-opensource/display-commonsys-intf
rm -rf hardware/qcom-caf/sm8150/audio
rm -rf hardware/qcom-caf/sm8150/media
rm -rf hardware/qcom-caf/wlan
rm -rf vendor/qcom/opensource/dataservices
rm -rf vendor/qcom/opensource/data-ipa-cfg-mgr
rm -rf packages/apps/FMRadio
rm -rf vendor/qcom/opensource/libfmjni
rm -rf vendor/qcom/opensource/fm-commonsys
rm -rf vendor/qcom/opensource/power
rm -rf vendor/support-lib
rm -rf hardware/google/pixel/power-libperfmgr
rm -rf hardware/google/pixel-sepolicy/power-libperfmgr
rm -rf hardware/google/pixel/powerstats
rm -rf hardware/google/pixel-sepolicy/powerstats
rm -rf hardware/google/pixel/pwrstats_util
rm -rf hardware/google/pixel/thermal
rm -rf hardware/google/pixel-sepolicy/thermal
rm -rf external/ant-wireless/ant_native
rm -rf external/ant-wireless/ant_service
rm -rf external/ant-wireless/antradio-library

# Track Syberia OS dependencies
$SYBERIA && git clone https://github.com/TRINK8T/device_xiaomi_syberia.git -b 11.0 device/xiaomi/syberia
$SYBERIA && git clone https://github.com/TRINK8T/device_qcom_sepolicy_syberia.git -b 11.0 device/qcom/sepolicy_vndr
$SYBERIA && git clone https://github.com/TRINK8T/vendor_syberia.git -b 11.0 vendor/syberia

# Track Nitrogen OS dependencies
$NITROGEN && git clone https://github.com/TRINK8T/device_xiaomi_nitrogen.git -b 11.0 device/xiaomi/nitrogen
$NITROGEN && git clone https://github.com/TRINK8T/device_qcom_sepolicy_nitrogen.git -b 11.0 device/qcom/sepolicy_vndr
$NITROGEN && git clone https://github.com/TRINK8T/packages_apps_NitrogenSettings.git -b 11.0 packages/apps/NitrogenSettings
$NITROGEN && git clone https://github.com/TRINK8T/packages_apps_Matlog.git -b 11.0 packages/apps/Matlog

# Track Nitrogen OS Hardware dependencies
$NITROGEN && git clone https://github.com/TRINK8T/hardware_libhardware.git -b 11.0 hardware/libhardware
$NITROGEN && git clone https://github.com/TRINK8T/system_libhwbinder.git -b 11.0 system/libhwbinder
$NITROGEN && git clone https://github.com/TRINK8T/vendor_qcom_opensource_interfaces.git -b 11.0 vendor/qcom/opensource/interfaces

# Track common dependencies
git clone https://github.com/TRINK8T/device_xiaomi_ginkgo.git -b 11.0 device/xiaomi/ginkgo
git clone https://github.com/TRINK8T/vendor_xiaomi_ginkgo.git -b 11.0 vendor/xiaomi/ginkgo
git clone https://github.com/TRINK8T/vendor_miuicamera.git -b 11.0 vendor/miuicamera
git clone https://github.com/TRINK8T/hardware_qcom-caf_sm8150_display.git -b 11.0 hardware/qcom-caf/sm8150/display
git clone https://github.com/TRINK8T/vendor_qcom-opensource_display-commonsys-intf.git -b 11.0 vendor/qcom-opensource/display-commonsys-intf
git clone https://github.com/TRINK8T/hardware_qcom-caf_sm8150_audio.git -b 11.0 hardware/qcom-caf/sm8150/audio
git clone https://github.com/TRINK8T/hardware_qcom-caf_sm8150_media.git -b 11.0 hardware/qcom-caf/sm8150/media
git clone https://github.com/TRINK8T/hardware_qcom-caf_wlan.git -b 11.0 hardware/qcom-caf/wlan
git clone https://github.com/TRINK8T/hardware_qcom-caf_common.git -b 11.0 hardware/qcom-caf/common
git clone https://github.com/TRINK8T/vendor_qcom_opensource_dataservices.git -b 11.0 vendor/qcom/opensource/dataservices
git clone https://github.com/TRINK8T/vendor_qcom_opensource_data-ipa-cfg-mgr.git -b 11.0 vendor/qcom/opensource/data-ipa-cfg-mgr
git clone https://github.com/TRINK8T/external_ant-wireless_antradio-library.git -b 11.0 external/ant-wireless/antradio-library
git clone https://github.com/TRINK8T/external_ant-wireless_ant_client -b 11.0 external/ant-wireless/ant/client
git clone https://github.com/TRINK8T/external_ant-wireless_ant_service -b 11.0 external/ant-wireless/ant/service
git clone https://github.com/TRINK8T/external_ant-wireless_hidl -b 11.0 external/ant-wireless/hidl
git clone https://github.com/TRINK8T/external_ant-wireless_ant_native -b 11.0 external/ant-wireless/ant/native
git clone https://github.com/TRINK8T/external_json-c.git -b 11.0 external/json-c
git clone https://github.com/TRINK8T/packages_resources_devicesettings.git -b 11.0 packages/resources/devicesettings
git clone https://github.com/TRINK8T/packages_apps_Eleven.git -b 11.0 packages/apps/Eleven
git clone https://github.com/TRINK8T/packages_apps_FMRadio.git -b 11.0 packages/apps/FMRadio
git clone https://github.com/TRINK8T/packages_apps_Recorder.git -b 11.0 packages/apps/Recorder
git clone https://github.com/TRINK8T/vendor_qcom_opensource_libfmjni.git -b 11.0 vendor/qcom/opensource/libfmjni
git clone https://github.com/TRINK8T/vendor_qcom_opensource_fm-commonsys.git -b 11.0 vendor/qcom/opensource/fm-commonsys
git clone https://github.com/TRINK8T/vendor_qcom_opensource_power.git -b 11.0 vendor/qcom/opensource/power
git clone https://github.com/TRINK8T/vendor_support-lib.git -b 11.0 vendor/support-lib

# Track kernel source
git clone https://github.com/TheHitMan7/android_kernel_sm6125.git -b linux-4.14.y kernel/xiaomi/ginkgo

# Track WireGuard Android
[ -d "kernel/xiaomi/ginkgo" ] && cd kernel/xiaomi/ginkgo
[ -f "scripts/fetch-latest-wireguard.sh" ] && ./scripts/fetch-latest-wireguard.sh
[ -d "net/wireguard" ] && cd ../../..
