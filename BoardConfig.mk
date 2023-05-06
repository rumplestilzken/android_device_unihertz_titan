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

# Display
TARGET_SCREEN_DENSITY := 400

#Kernel
TARGET_PREBUILT_KERNEL := 
HAS_PREBUILT_KERNEL := false
TARGET_NO_KERNEL := false
TARGET_NO_KERNEL_OVERRIDE := false

KERNEL_ARCH := arm64
KERNEL_NO_GCC = false
TARGET_KERNEL_CONFIG := titan_emmc_defconfig
TARGET_KERNEL_CLANG_COMPILE = false
TARGET_KERNEL_CROSS_COMPILE := aarch64-linux-android-
TARGET_KERNEL_USE_CLANG = false
TARGET_KERNEL_SOURCE := kernel/unihertz/gargoyle

#Kernel
BOARD_BOOT_HEADER_VERSION := 2
BOARD_KERNEL_IMAGE_NAME = Image.gz
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 buildvariant=user 
BOARD_KERNEL_BASE := 1409285888
BOARD_KERNEL_OFFSET := 3959947520
BOARD_RAMDISK_OFFSET := 16777472
BOARD_SECOND_OFFSET := 3975151872
BOARD_TAGS_OFFSET := 335052800
BOARD_DTB_OFFSET := 1409286144 
BOARD_PAGE_SIZE := 2048

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

# Metadata
BOARD_USES_METADATA_PARTITION := false

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_CACHEIMAGE_PARTITION_SIZE := 452984832
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3221225472

# Recovery
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
TARGET_USERIMAGES_USE_EXT4 := true
#TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_NO_REAL_SDCARD := false

