# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),maguro)

include $(CLEAR_VARS)
LOCAL_MODULE := bcm4330
LOCAL_MODULE_OWNER := broadcom
LOCAL_SRC_FILES := bcm4330.hcd
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .hcd
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/firmware
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libfrsdk
LOCAL_MODULE_OWNER := samsung
LOCAL_SRC_FILES := libfrsdk.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/lib
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libsec-ril
LOCAL_MODULE_OWNER := samsung
LOCAL_SRC_FILES := libsec-ril.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/lib
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libdrmdecrypt
LOCAL_SRC_FILES := libdrmdecrypt.so
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := widevine
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libsecril-client
LOCAL_MODULE_OWNER := samsung
LOCAL_SRC_FILES := libsecril-client.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := gps.omap4
LOCAL_MODULE_OWNER := csr
LOCAL_SRC_FILES := gps.omap4.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/lib/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libwvdrmengine
LOCAL_MODULE_OWNER := samsung
LOCAL_SRC_FILES := libwvdrmengine.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/lib/mediadrm
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := sirfgps
LOCAL_MODULE_OWNER := samsung
LOCAL_SRC_FILES := sirfgps.conf
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .conf
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc
include $(BUILD_PREBUILT)

endif
