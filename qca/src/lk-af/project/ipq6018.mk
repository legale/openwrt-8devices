# top level project rules for ipq6018 project
#
LOCAL_DIR := $(GET_LOCAL_DIR)

TARGET := ipq6018

MODULES += app/shell app/aboot

ifeq ($(TARGET_BUILD_VARIANT),user)
DEBUG := 0
else
DEBUG := 1
endif

#DEFINES += WITH_DEBUG_DCC=1
DEFINES += WITH_DEBUG_UART=1
#DEFINES += WITH_DEBUG_FBCON=1
DEFINES += DEVICE_TREE=1
ENABLE_SDHCI_SUPPORT := 1
ifeq ($(ENABLE_SDHCI_SUPPORT),1)
DEFINES += MMC_SDHCI_SUPPORT=1
endif

DEFINES += CONFIG_IPQ_ELF_AUTH=1
ENABLE_THUMB := false
ENABLE_USB30_SUPPORT := 1

ifeq ($(ENABLE_USB30_SUPPORT),1)
	DEFINES += USB30_SUPPORT=1
endif