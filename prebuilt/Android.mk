# DTB Image Build Rule
LOCAL_PATH := $(call my-dir)

# Copy prebuilt DTB image
include $(CLEAR_VARS)
LOCAL_MODULE := dtb
LOCAL_MODULE_CLASS := ETC
LOCAL_PREBUILT_MODULE_FILE := $(LOCAL_PATH)/dtb.img
LOCAL_MODULE_PATH := $(PRODUCT_OUT)
LOCAL_INSTALLED_MODULE_STEM := dtb.img
include $(BUILD_PREBUILT)

# Ensure DTB is available for boot image
.PHONY: dtb.img
dtb.img: $(LOCAL_INSTALLED_MODULE_STEM)
