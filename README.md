# TWRP Device Tree for xsmart CORE X

[![Build TWRP](https://github.com/YOUR_GITHUB_USERNAME/android_device_xsmart_CORE_X/actions/workflows/build.yml/badge.svg)](https://github.com/YOUR_GITHUB_USERNAME/android_device_xsmart_CORE_X/actions/workflows/build.yml)

## Device Specifications

| Feature         | Specification                          |
|-----------------|----------------------------------------|
| Chipset         | MediaTek Helio G85 (MT6765)            |
| Architecture    | arm64-v8a / armv7-a-neon               |
| CPU             | Octa-core Cortex-A53                   |
| Display         | 320 dpi                                |
| Partition type  | A/B (Virtual A/B)                      |
| Dynamic parts   | system, vendor, product                |
| Bootloader      | Locked (AVB enabled)                   |
| Kernel          | Prebuilt (header v2)                   |

## Building TWRP

### Via GitHub Actions (Recommended)

1. Fork this repository
2. Go to **Actions** → **Build TWRP for xsmart CORE_X**
3. Click **Run workflow**
4. Select branch (`twrp-12.1`) and build target (`bootimage`)
5. Download the artifact once the build completes

### Locally

```bash
# Initialize TWRP source
repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags

# Clone device tree
git clone https://github.com/YOUR_GITHUB_USERNAME/android_device_xsmart_CORE_X device/xsmart/CORE_X

# Build
source build/envsetup.sh
lunch omni_CORE_X-eng
mka bootimage -j$(nproc --all)
```

## Flashing Instructions

This is an **A/B device**. The recovery ramdisk is embedded in `boot.img`.

```bash
# Flash to both slots
fastboot flash boot_a boot.img
fastboot flash boot_b boot.img
fastboot reboot recovery
```

## Notes

- Crypto / FBE decryption is supported
- USB OTG and MicroSD are supported in TWRP
- Built against TWRP 12.1 (Android 12 base)

## Credits

- [SebaUbuntu's TWRP device tree generator](https://github.com/sebaubuntu-python/twrpdtgen) (initial tree base)
- TWRP Team
