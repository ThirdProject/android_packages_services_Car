# Copyright (C) 2015 The Android Open Source Project
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

# Build the application.
include $(CLEAR_VARS)

LOCAL_PACKAGE_NAME := bt-map-service
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := platform

LOCAL_PROGUARD_FLAG_FILES := proguard.flags

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_JAVA_LIBRARIES := \
	javax.obex \
	telephony-common

LOCAL_STATIC_JAVA_LIBRARIES := \
	android.bluetooth.client.map \
	bt-map-client-lib \
	android-support-v4

include $(BUILD_PACKAGE)

include $(call all-makefiles-under,$(LOCAL_PATH))
