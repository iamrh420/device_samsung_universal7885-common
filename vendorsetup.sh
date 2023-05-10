UNIVERSAL="device/samsung/universal7885-common"
FM_PATH="packages/apps/FMRadio"

git clone --depth=1 https://github.com/CherishOS-Devices/kernel_samsung_exynos7885.git -b tiramisu kernel/samsung/exynos7885
git clone https://github.com/CherishOS-Devices/device_samsung_a10.git -b tiramisu device/samsung/a10
git clone https://github.com/eurekadevelopment/android_hardware_samsung_slsi_libbt hardware/samsung_slsi/libbt
git clone https://github.com/eurekadevelopment/android_hardware_samsung_slsi_scsc_wifibt_wifi_hal.git hardware/samsung_slsi/scsc_wifibt/wifi_hal
git clone https://github.com/lineageos/android_hardware_samsung_slsi_scsc_wifibt_wpa_supplicant_lib hardware/samsung_slsi/scsc_wifibt/wpa_supplicant_lib
mv hardware/samsung/nfc .
git clone https://github.com/eurekadevelopment/android_hardware_samsung hardware/samsung -b AOSP-13
mv nfc hardware/samsung
git clone --depth=1 https://github.com/CherishOS-Devices/vendor_samsung_universal7885-common.git -b tiramisu vendor/samsung/universal7885-common
git clone --depth=1 https://github.com/CherishOS-Devices/vendor_samsung_a10.git -b tiramisu vendor/samsung/a10'

# Remove multiple declared FMRadio path (we have our own FMRadio and this cause build error)
if [ -d "$FM_PATH" ]; then
	echo "Remove FMRadio from ROM Source"
	rm -Rf $FM_PATH
fi
