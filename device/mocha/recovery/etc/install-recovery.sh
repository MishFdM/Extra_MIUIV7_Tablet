#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/sdhci-tegra.3/by-name/recovery:11096064:f1198808c4f2c663067d796de536a7739559944e; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/sdhci-tegra.3/by-name/boot:8710144:5813a00974a2baba370ac86b54f5effa25885a09 EMMC:/dev/block/platform/sdhci-tegra.3/by-name/recovery f1198808c4f2c663067d796de536a7739559944e 11096064 5813a00974a2baba370ac86b54f5effa25885a09:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
/system/xbin/su --auto-daemon &
