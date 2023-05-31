DEVICE_PATH := device/unihertz/gargoyle

# A/B
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    product \
    recovery \
    system \
    system_ext \
    vbmeta \
    vbmeta_system \
    vendor

DISABLE_DEXPREOPT_CHECK=true

# Platform
TARGET_BOARD_PLATFORM := mt6771
TARGET_SUPPORTS_64_BIT_APPS := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a73

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_USES_64_BIT_BINDER := true

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Display
TARGET_SCREEN_DENSITY := 400

#Kernel

#CLANG
TARGET_KERNEL_CLANG_COMPILE := true 
KERNEL_CLANG_TRIPLE := 

#GCC
#TARGET_KERNEL_CLANG_COMPILE := false

TARGET_KERNEL_SOURCE := kernel/unihertz/gargoyle
TARGET_KERNEL_CONFIG := titan_emmc_defconfig

#Kernel
BOARD_BOOT_HEADER_VERSION := 2
BOARD_KERNEL_IMAGE_NAME = Image.gz
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_KERNEL_CMDLINE := \
#    console=tty0 console=ttyS0,921600n1 \
#    vmalloc=400M slub_debug=OFZPU swiotlb=noforce page_owner=on \
#    cgroup.memory=nosocket,nokmem androidboot.hardware=mt6771 \
#    firmware_class.path=/vendor/firmware loop.max_part=7 \
#    has_battery_removed=0 androidboot.boot_devices=bootdevice.11230000.mmc root=/dev/ram root \
    bootopt=64S3,32N2,64N2
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_OFFSET := 0x00080000
BOARD_RAMDISK_OFFSET := 0x15000000
BOARD_SECOND_OFFSET := 0x00f00000
BOARD_TAGS_OFFSET := 0x14000000
BOARD_DTB_OFFSET := 0x14000000 
BOARD_PAGE_SIZE := 2048

# Kernel modules
#TARGET_MODULE_ALIASES += \
#   tcp_htcp.ko:tcp_htcp.ko \
#   tcp_westwood.ko:tcp_westwood.ko

# Metadata
BOARD_USES_METADATA_PARTITION := false

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_CACHEIMAGE_PARTITION_SIZE := 452984832
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3221225472
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_REAL_SDCARD := false

