<div align="center">

<img src="./icon.svg" width="150" alt="BootFox Logo" />

# 🦊 BootFox OSS Project — Trees

**Ready-to-use open-source device trees for Android recovery builds.**

[![GitHub](https://img.shields.io/badge/GitHub-BootFox%2FOSS--P1-181717?style=for-the-badge&logo=github)](https://github.com/BootFox/OSS-P1)
[![OrangeFox](https://img.shields.io/badge/Recovery-OrangeFox_R12.0-FF6B00?style=for-the-badge&logo=android)](https://github.com/BootFox/OSS-P1)
[![License](https://img.shields.io/badge/License-OSS-2EA44F?style=for-the-badge&logo=opensourceinitiative)](https://github.com/BootFox/OSS-P1)

</div>

---

## 📖 What is this?

**BootFox OSS Project — Trees** is a collection of **device trees** and **recovery configurations** for Xiaomi devices, maintained as part of the BootFox open-source initiative.

The goal is simple: **provide a clean, ready-to-build base** for compiling custom recovery images (OrangeFox, TWRP-compatible) without reinventing the wheel for every device.

> 🦊 *Part of the BootFox ecosystem — tools, trees, and resources for Android modding.*

---

## 🧩 What's inside?

Each device tree in this repository contains everything needed to build a recovery image:

| Component | Description |
|-----------|-------------|
| 📁 `prebuilt/` | Prebuilt kernel, DTB, and vendor blobs required for recovery |
| 📁 `recovery/root/` | Recovery ramdisk overlay (init scripts, fstab, binaries) |
| ⚙️ `BoardConfig.mk` | Board-specific build flags (partitions, kernel, A/B, etc.) |
| 📦 `device.mk` | Product packages and recovery configuration |
| 📄 `AndroidProducts.mk` | Product makefile definitions |
| 🔧 `vendorsetup.sh` | Environment setup for `lunch` / `breakfast` |
| 📋 `twrp_*.mk` | TWRP/OrangeFox product configuration |

---

## 🚀 How to use

### 1. Sync the recovery source

```bash
repo init -u https://gitlab.com/OrangeFox/Manifest.git -b fox_12.1
repo sync -c -j$(nproc) --no-clone-bundle --no-tags
```

### 2. Place the device tree

Copy or symlink the desired tree into `device/xiaomi/<codename>/` inside your source tree.

### 3. Build

```bash
source build/envsetup.sh
lunch twrp_<codename>-eng   # or your product name
mka recoveryimage
```

> 💡 **Tip:** Use `--depth=1` and `--filter=blob:none` when cloning heavy `prebuilts` manually to save disk space and time.

---

## 📂 Repository structure

```
OSS-P1/
├── prebuilt/              # 🧱 Prebuilt kernel, DTB, vendor files
├── recovery/root/         # 📁 Recovery ramdisk overlay
├── AndroidProducts.mk     # 📄 Product definitions
├── BoardConfig.mk         # ⚙️ Board build flags
├── device.mk              # 📦 Recovery packages
├── twrp_<codename>.mk     # 📋 TWRP/OrangeFox product config
└── vendorsetup.sh         # 🔧 Environment setup
```

---

## ✅ Supported targets

| Category | Status |
|----------|--------|
| Xiaomi MTK devices | ✅ Active |
| Xiaomi Qualcomm devices | 🧪 Experimental |
| A/B & Virtual A/B | ✅ Supported |
| Dynamic partitions (`super`) | ✅ Supported |
| FBE decryption | 🔧 In progress |

> 📌 *Compatibility varies by device. Check the tree-specific flags before building.*

---

## 🛠️ Requirements

- **Linux** (Ubuntu 22.04+ recommended)
- **Python 3.8+**
- **`repo`** tool installed
- **`git-lfs`** (for large prebuilt assets)
- **~80–120 GB** free disk space (full sync + `out/`)
- **16 GB RAM** minimum *(32 GB recommended for heavy builds)*

---

## 🤝 Contributing

Contributions are welcome! If you have a working tree for a Xiaomi device and want to share it:

1. Fork this repository.
2. Add your tree under a new branch or directory.
3. Test the build thoroughly.
4. Open a Pull Request with a short description.

> 🦊 *BootFox is built by the community, for the community.*

---

## ⚠️ Disclaimer

- This project is **not affiliated with Xiaomi, OrangeFox, or TWRP**.
- Flashing custom recovery **voids your warranty** and can brick your device.
- **You are responsible for your own actions.** Always keep a stock firmware backup.

---

<div align="center">

**🦊 BootFox OSS Project — Trees**

*Build. Flash. Repeat.*

[⭐ Star this repo](https://github.com/BootFox/OSS-P1) · [🐛 Report an issue](https://github.com/BootFox/OSS-P1/issues) · [💬 Discussions](https://github.com/BootFox/OSS-P1/discussions)

</div>
