BUILD_BLKTRACE := false

ifeq ($(BUILD_BLKTRACE), true)

ifneq ($(TARGET_SIMULATOR),true)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := blkparse.c blkparse_fmt.c rbtree.c act_mask.c strverscmp.c
LOCAL_C_INCLUDES := external/blktrace/
LOCAL_CFLAGS := -O2 -g -W -Wall -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
LOCAL_MODULE := blkparse
LOCAL_MODULE_TAGS :=
LOCAL_SYSTEM_SHARED_LIBRARIES := libc
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := blktrace.c act_mask.c
LOCAL_C_INCLUDES := external/blktrace/
LOCAL_CFLAGS := -O2 -g -W -Wall -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64 -D_ANDROID_
LOCAL_MODULE := blktrace
LOCAL_MODULE_TAGS :=
LOCAL_SYSTEM_SHARED_LIBRARIES := libc
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := verify_blkparse.c
LOCAL_C_INCLUDES := external/blktrace/
LOCAL_CFLAGS := -O2 -g -W -Wall -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
LOCAL_MODULE := verify_blkparse
LOCAL_MODULE_TAGS :=
LOCAL_SYSTEM_SHARED_LIBRARIES := libc
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := blkrawverify.c
LOCAL_C_INCLUDES := external/blktrace/
LOCAL_CFLAGS := -O2 -g -W -Wall -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
LOCAL_MODULE := blkrawverify
LOCAL_MODULE_TAGS :=
LOCAL_SYSTEM_SHARED_LIBRARIES := libc
include $(BUILD_EXECUTABLE)

#include $(CLEAR_VARS)
#LOCAL_SRC_FILES := blkiomon.c
#LOCAL_C_INCLUDES := external/blktrace/
#LOCAL_CFLAGS := -O2 -g -W -Wall -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
#LOCAL_MODULE := blkiomon
#LOCAL_MODULE_TAGS :=
#LOCAL_SYSTEM_SHARED_LIBRARIES := libc
#include $(BUILD_EXECUTABLE)

endif
endif
