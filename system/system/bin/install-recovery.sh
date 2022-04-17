#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:7ec50b9e54ea98852565354b8cdf09aae30fe419; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:33554432:b2e5e716de2e948e349e33c6efacce83288256ff EMMC:/dev/block/platform/bootdevice/by-name/recovery 7ec50b9e54ea98852565354b8cdf09aae30fe419 33554432 b2e5e716de2e948e349e33c6efacce83288256ff:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
