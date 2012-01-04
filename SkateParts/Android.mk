ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),skate)
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_PACKAGE_NAME := SkateParts
LOCAL_CERTIFICATE := platform

include $(BUILD_PACKAGE)

include $(call all-makefiles-under,$(LOCAL_PATH))

LOCAL_OVERRIDES_PACKAGES := PhaseBeam HoloSpiralWallpaper Galaxy4 MagicSmokeWallpapers NoiseField OpenWnn PinyinIME VideoEditor VisualizationWallpapers
endif 
