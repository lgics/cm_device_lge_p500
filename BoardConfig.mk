-include vendor/lge/p500/BoardConfigVendor.mk
-include device/lge/msm7x27-common/BoardConfigCommon.mk


# Nedeed for sensors
COMMON_GLOBAL_CFLAGS += -DUSE_LGE_ALS_DUMMY

TARGET_KERNEL_CONFIG := cyanogenmod_p500_defconfig

TARGET_BOOTLOADER_BOARD_NAME := p500
TARGET_OTA_ASSERT_DEVICE := thunderg,p500

BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=p500 no_console_suspend

USE_CAMERA_STUB := false

