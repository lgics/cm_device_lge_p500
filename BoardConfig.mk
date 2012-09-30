-include vendor/lge/p500/BoardConfigVendor.mk
-include device/lge/msm7x27-common/BoardConfigCommon.mk

TARGET_KERNEL_CONFIG := cyanogenmod_p500_defconfig
BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=p500 no_console_suspend

TARGET_BOOTLOADER_BOARD_NAME := p500
TARGET_OTA_ASSERT_DEVICE := thunderg,p500

USE_CAMERA_STUB := false

TARGET_PROVIDES_LIBAUDIO := true
# Enable ICS-backwards compatibility    
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT
# Disable PIE since it breaks ICS camera blobs
TARGET_DISABLE_ARM_PIE := true
