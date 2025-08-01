# ☠️ Zero-Writer Magisk Module ☠️

## ⚠️ Critical Warning

> **This module is extremely destructive and must not be installed on physical hardware unless the explicit intent is to permanently hard brick the device.** The developer bears no responsibility for any damage, data loss, or irreversible bricking resulting from the use of this module. Proceed only in controlled, experimental environments at your own risk.

## 📝 Overview

The Zero-Writer Magisk module executes a single, highly destructive command during the device boot process:

```bash
dd if=/dev/zero of=/dev/block/sda
```

This command overwrites the entire primary block device (`/dev/block/sda`) with null bytes (zeros). The `/dev/block/sda` partition typically contains critical system components, including the bootloader, system partitions, user data, and other essential storage structures. By writing zeros across this device, the module effectively obliterates all data and firmware, rendering the device permanently inoperable—a state known as a **hard brick**.

A hard brick results in a device that is completely unresponsive, with no access to recovery modes, fastboot, ADB, or bootloader interfaces. The device will not boot, respond to input, or function in any capacity, effectively becoming unusable without specialized hardware-level intervention, which is often impractical or impossible.

## 🔬 Testing and Validation

The module has been tested exclusively in virtual machine (VM) environments. VMs typically include built-in mechanisms to reset or repair corrupted virtual disks, mitigating the permanent effects of the module and allowing recovery in such controlled settings. 

**Critical Note:** Physical hardware lacks these recovery mechanisms. Overwriting `/dev/block/sda` on a real device will result in a permanent hard brick, with no viable means of restoration under normal circumstances. Users must exercise extreme caution and avoid deployment on any physical device unless permanent destruction is the intended outcome.

## ❓ Purpose and Use Case

The Zero-Writer Magisk module is intended solely for educational or experimental purposes in isolated, non-production environments, such as virtual machines or dedicated test devices. It serves as a stark demonstration of the catastrophic consequences of low-level storage manipulation and is not suitable for use on any device intended for practical operation or containing valuable data.

## 📜 Disclaimer

The Zero-Writer Magisk module is provided as-is, without any warranties or guarantees. Users are solely responsible for understanding the severe risks associated with its use. The developer explicitly disclaims liability for any adverse outcomes, including but not limited to data loss, permanent device bricking, or other unintended consequences.

**This module should only be used by individuals with a clear understanding of its destructive impact and in environments where permanent damage is an acceptable outcome.**
