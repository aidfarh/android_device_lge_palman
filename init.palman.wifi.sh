#!/system/bin/sh

# Workaround for conn_init not copying the updated firmware
rm /data/misc/wifi/WCNSS_qcom_cfg.ini
rm /data/misc/wifi/WCNSS_qcom_wlan_nv.bin
cp /system/etc/wifi/WCNSS_qcom_cfg.ini /data/misc/wifi/
cp /system/etc/wifi/WCNSS_qcom_wlan_nv.bin /data/misc/wifi/

/system/bin/conn_init

echo 1 > /dev/wcnss_wlan
