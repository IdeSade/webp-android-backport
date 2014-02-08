LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := webpwrap

LOCAL_SRC_FILES := \
	../webp/swig/libwebp_java_wrap.c \

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/../webp/src

LOCAL_STATIC_LIBRARIES := webp

LOCAL_LDLIBS := -llog -ljnigraphics

include $(BUILD_SHARED_LIBRARY)
