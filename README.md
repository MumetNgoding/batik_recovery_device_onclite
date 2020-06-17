The Xiaomi Redmi 7/Y3 (codenamed _"onclite/onc"_) is a mid-range smartphone from Xiaomi.
It was announced on March, 2019.

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Octa-core (4x1.8 GHz Kryo 250 Gold & 4x1.8 GHz Kryo 250 Silver)
Chipset | Qualcomm SDM632 Snapdragon 632 (14 nm)
GPU     | Adreno 506
Shipped Android Version | 9.0
Memory | 64 GB, 4 GB RAM or 32 GB, 3 GB RAM
MicroSD | microSD, up to 512 GB (dedicated slot)
Battery | Non-removable Li-Ion 4000 mAh battery
Display | 6.26 inches, 97.8 cm2 (~81.5% screen-to-body ratio)
Rear Camera  | 12 MP, f/1.8, 1.25µm, PDAF
Front Camera  |  8 MP, f/2.0, 1.12µm

![Xiaomi Redmi 7](https://raw.githubusercontent.com/hadaddarajat/Assets/master/Images/Devices/Redmi%207.webp "Xiaomi Redmi 7")

## Features

Works:
* ADB
* Decryption of /data
* Screen brightness settings
* MTP
* Flashing
* Backup/Restore
* USB OTG
* Vibration

## Sync and Build manually
---------------

To get started with building SkyHawk Recovery, you'll need to get
familiar with [Git and Repo](https://source.android.com/source/using-repo.html).

To initialize your local repository using the minimal-manifest-twrp omni trees to build SkyHawk Recovery, use a command like this:

```bash
repo init --depth=1 -u git://github.com/SKYHAWK-Recovery-Project/platform_manifest_twrp_omni.git -b android-9.0
repo sync -j$(nproc --all) --force-sync
```

## Add these projects to .repo/manifests/shrp.xml
```xml
<project path="SHRP-Devices/android_device_xiaomi_onclite" remote="github" revision="android-10.0" />
```

## Then to build
```bash
     cd <source-dir>
     . build/envsetup.sh && export ALLOW_MISSING_DEPENDENCIES=true 
     lunch omni_onclite-eng && mka recoveryimage
```

## To test it
```
fastboot flash recovery out/target/product/onclite/recovery.img
```
