#!/bin/sh

REPO_PATH=$(pwd)
TARGET="$1"
WRT_PATH="$2"

usage () {
  echo "Usage: ./install.sh <target> <wrt path>"
  echo "    Target: BCM47XX or BCM2708 (case sensitive)"
  echo "BCM2708 - https://github.com/lede-project/source.git@94491a15712732c56dccbf4593000376ae275134"
  echo ""
  echo "Be sure both your WRT_PATH and WRT_PATH/feeds/luci are 'git reset --hard HEAD'"
  exit 1
}

if [ -z "$WRT_PATH" ] ; then
  usage
fi

BTPACKS="kmod-bluetooth bluez-libs bluez-utils bluez-daemon python-bluepy bluez-firmware kmod-usb-core kmod-usb-uhci kmod-usb2 usbutils"
for PACK in $BTPACKS ; do
  $WRT_PATH/scripts/feeds install -p linkmeter $PACK
done


