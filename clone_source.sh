#!/bin/bash
set -ex

git clone --depth=1 --branch "openwrt-25.12" --single-branch "https://github.com/immortalwrt/immortalwrt.git" /home/runner/openwrt
cd /home/runner/openwrt

./scripts/feeds update -a && ./scripts/feeds install -a
