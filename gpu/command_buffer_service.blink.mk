# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE := gpu_command_buffer_service_gyp
LOCAL_MODULE_SUFFIX := .a
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_TARGET_ARCH := $(TARGET_$(GYP_VAR_PREFIX)ARCH)
gyp_intermediate_dir := $(call local-intermediates-dir,,$(GYP_VAR_PREFIX))
gyp_shared_intermediate_dir := gen#//$(call intermediates-dir-for,GYP,shared,,,$(GYP_VAR_PREFIX))

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES := \
	$(call intermediates-dir-for,STATIC_LIBRARIES,gpu_disk_cache_proto_gyp,,,$(GYP_VAR_PREFIX))/gpu_disk_cache_proto_gyp.a \
	$(call intermediates-dir-for,GYP,third_party_khronos_khronos_headers_gyp,,,$(GYP_VAR_PREFIX))/khronos_headers.stamp \
	$(call intermediates-dir-for,STATIC_LIBRARIES,skia_skia_library_gyp,,,$(GYP_VAR_PREFIX))/skia_skia_library_gyp.a \
	$(call intermediates-dir-for,STATIC_LIBRARIES,ui_gl_gl_gyp,,,$(GYP_VAR_PREFIX))/ui_gl_gl_gyp.a

GYP_GENERATED_OUTPUTS :=

# Make sure our deps and generated files are built first.
#//LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

LOCAL_CPP_EXTENSION := .cc
LOCAL_GENERATED_SOURCES :=

GYP_COPIED_SOURCE_ORIGIN_DIRS :=

LOCAL_SRC_FILES := \
	gpu/command_buffer/service/async_pixel_transfer_delegate.cc \
	gpu/command_buffer/service/async_pixel_transfer_manager_android.cc \
	gpu/command_buffer/service/async_pixel_transfer_manager_idle.cc \
	gpu/command_buffer/service/async_pixel_transfer_manager_share_group.cc \
	gpu/command_buffer/service/async_pixel_transfer_manager_stub.cc \
	gpu/command_buffer/service/async_pixel_transfer_manager_sync.cc \
	gpu/command_buffer/service/async_pixel_transfer_manager.cc \
	gpu/command_buffer/service/buffer_manager.cc \
	gpu/command_buffer/service/cmd_parser.cc \
	gpu/command_buffer/service/command_buffer_service.cc \
	gpu/command_buffer/service/common_decoder.cc \
	gpu/command_buffer/service/context_group.cc \
	gpu/command_buffer/service/context_state.cc \
	gpu/command_buffer/service/error_state.cc \
	gpu/command_buffer/service/feature_info.cc \
	gpu/command_buffer/service/framebuffer_manager.cc \
	gpu/command_buffer/service/gles2_cmd_copy_texture_chromium.cc \
	gpu/command_buffer/service/gles2_cmd_decoder.cc \
	gpu/command_buffer/service/gles2_cmd_validation.cc \
	gpu/command_buffer/service/gl_context_virtual.cc \
	gpu/command_buffer/service/gl_state_restorer_impl.cc \
	gpu/command_buffer/service/gpu_control_service.cc \
	gpu/command_buffer/service/gpu_scheduler.cc \
	gpu/command_buffer/service/gpu_state_tracer.cc \
	gpu/command_buffer/service/gpu_switches.cc \
	gpu/command_buffer/service/gpu_tracer.cc \
	gpu/command_buffer/service/id_manager.cc \
	gpu/command_buffer/service/image_manager.cc \
	gpu/command_buffer/service/in_process_command_buffer.cc \
	gpu/command_buffer/service/logger.cc \
	gpu/command_buffer/service/mailbox_manager.cc \
	gpu/command_buffer/service/mailbox_synchronizer.cc \
	gpu/command_buffer/service/memory_program_cache.cc \
	gpu/command_buffer/service/program_manager.cc \
	gpu/command_buffer/service/query_manager.cc \
	gpu/command_buffer/service/renderbuffer_manager.cc \
	gpu/command_buffer/service/program_cache.cc \
	gpu/command_buffer/service/shader_manager.cc \
	gpu/command_buffer/service/shader_translator.cc \
	gpu/command_buffer/service/shader_translator_cache.cc \
	gpu/command_buffer/service/stream_texture_manager_in_process_android.cc \
	gpu/command_buffer/service/texture_definition.cc \
	gpu/command_buffer/service/texture_manager.cc \
	gpu/command_buffer/service/transfer_buffer_manager.cc \
	gpu/command_buffer/service/vertex_array_manager.cc \
	gpu/command_buffer/service/vertex_attrib_manager.cc \
	gpu/command_buffer/service/async_pixel_transfer_manager_egl.cc


# Flags passed to both C and C++ files.
MY_CFLAGS_Debug := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fstack-protector \
	-fno-short-enums \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
	-Os \
	-g \
	-fdata-sections \
	-ffunction-sections \
	-fomit-frame-pointer \
	-funwind-tables

MY_DEFS_Debug := \
	'-DTENCENT_FITSCREEN=1' \
	'-DTENCENT_CHANGES_SPDY=1' \
	'-DTENCENT_CHANGES_HTTP_PROXY=1' \
	'-DTENCENT_CHANGES_QPROXY=1' \
	'-DTENCENT_CHANGES_SOCKET=1' \
	'-DTENCENT_12306_TICKET=1' \
	'-DTENCENT_ALIPAY_USERAGENT=1' \
	'-DTENCENT_CHANGES_PRECONNECT=1' \
	'-DTENCENT_CHANGES_LBS=1' \
	'-DTENCENT_SECURITY_CHECK=1' \
	'-DTENCENT_CHANGES=1' \
	'-DTENCENT_CHANGES_REPORT=1' \
	'-DTENCENT_CHANGES_MISSING_TILES_OPT=1' \
	'-DTENCENT_AD_FILTER=1' \
	'-DTENCENT_CHANGES_DOWNLOAD_GARBLED=1' \
	'-DTENCENT_SAVE_FLOW_NOTIFICATION=1' \
	'-DTENCENT_CHANGES_ERROR_PAGE=1' \
	'-DTENCENT_CHANGES_WML=1' \
	'-DENABLE_WML=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DBLINK_SCALE_FILTERS_AT_RECORD_TIME' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DENABLE_WEBRTC=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_BROWSER_CDMS' \
	'-DENABLE_CONFIGURATION_POLICY' \
	'-DDISCARDABLE_MEMORY_ALWAYS_SUPPORTED_NATIVELY' \
	'-DSYSTEM_NATIVELY_SIGNALS_MEMORY_PRESSURE' \
	'-DENABLE_EGLIMAGE=1' \
	'-DCLD_VERSION=1' \
	'-DENABLE_PRINTING=1' \
	'-DENABLE_MANAGED_USERS=1' \
	'-DDATA_REDUCTION_FALLBACK_HOST="http://compress.googlezip.net:80/"' \
	'-DDATA_REDUCTION_DEV_HOST="http://proxy-dev.googlezip.net:80/"' \
	'-DSPDY_PROXY_AUTH_ORIGIN="https://proxy.googlezip.net:443/"' \
	'-DDATA_REDUCTION_PROXY_PROBE_URL="http://check.googlezip.net/connect"' \
	'-DDATA_REDUCTION_PROXY_WARMUP_URL="http://www.gstatic.com/generate_204"' \
	'-DVIDEO_HOLE=1' \
	'-DPROTOBUF_USE_DLLS' \
	'-DGOOGLE_PROTOBUF_NO_RTTI' \
	'-DGOOGLE_PROTOBUF_NO_STATIC_INITIALIZER' \
	'-DSK_ENABLE_INST_COUNT=0' \
	'-DSK_SUPPORT_GPU=1' \
	'-DGR_GL_CUSTOM_SETUP_HEADER="GrGLConfig_chrome.h"' \
	'-DSK_ENABLE_LEGACY_API_ALIASING=1' \
	'-DSK_ATTR_DEPRECATED=SK_NOTHING_ARG1' \
	'-DGR_GL_IGNORE_ES3_MSAA=0' \
	'-DSK_WILL_NEVER_DRAW_PERSPECTIVE_TEXT' \
	'-DSK_SUPPORT_LEGACY_GETTOPDEVICE' \
	'-DSK_SUPPORT_LEGACY_BITMAP_CONFIG' \
	'-DSK_SUPPORT_LEGACY_DEVICE_VIRTUAL_ISOPAQUE' \
	'-DSK_SUPPORT_LEGACY_N32_NAME' \
	'-DSK_SUPPORT_LEGACY_SETCONFIG' \
	'-DSK_IGNORE_ETC1_SUPPORT' \
	'-DSK_IGNORE_GPU_DITHER' \
	'-DSK_SUPPORT_LEGACY_GETTOTALCLIP' \
	'-DSK_BUILD_FOR_ANDROID' \
	'-DSK_USE_POSIX_THREADS' \
	'-DSK_DEFERRED_CANVAS_USES_FACTORIES=1' \
	'-DU_USING_ICU_NAMESPACE=0' \
	'-DMESA_EGL_NO_X11_HEADERS' \
	'-DUSE_OPENSSL=1' \
	'-DUSE_OPENSSL_CERTS=1' \
	'-D__STDC_CONSTANT_MACROS' \
	'-D__STDC_FORMAT_MACROS' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \
	'-D_DEBUG'


# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES_Debug := \
	$(LOCAL_PATH)/$(gyp_shared_intermediate_dir)/shim_headers/icuuc/target \
	$(LOCAL_PATH)/$(gyp_shared_intermediate_dir)/shim_headers/icui18n/target \
	$(LOCAL_PATH)/$(gyp_shared_intermediate_dir)/shim_headers/ashmem/target \
	$(LOCAL_PATH)/$(gyp_shared_intermediate_dir) \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/third_party/khronos \
	$(LOCAL_PATH)/gpu \
	$(LOCAL_PATH)/skia/config \
	$(LOCAL_PATH)/$(gyp_shared_intermediate_dir)/protoc_out \
	$(LOCAL_PATH)/third_party/protobuf \
	$(LOCAL_PATH)/third_party/protobuf/src \
	$(LOCAL_PATH)/third_party/re2 \
	$(LOCAL_PATH)/third_party/skia/src/core \
	$(LOCAL_PATH)/third_party/skia/include/core \
	$(LOCAL_PATH)/third_party/skia/include/effects \
	$(LOCAL_PATH)/third_party/skia/include/pdf \
	$(LOCAL_PATH)/third_party/skia/include/gpu \
	$(LOCAL_PATH)/third_party/skia/include/lazy \
	$(LOCAL_PATH)/third_party/skia/include/pathops \
	$(LOCAL_PATH)/third_party/skia/include/pipe \
	$(LOCAL_PATH)/third_party/skia/include/ports \
	$(LOCAL_PATH)/third_party/skia/include/utils \
	$(LOCAL_PATH)/skia/ext \
	$(LOCAL_PATH)/third_party/icu/source/common \
	$(LOCAL_PATH)/third_party/icu/source/i18n \
	$(LOCAL_PATH)/$(gyp_shared_intermediate_dir)/ui/gl \
	$(LOCAL_PATH)/third_party/mesa/src/include \
	$(PWD)/frameworks/wilhelm/include \
	$(PWD)/bionic \
	$(NDK_ROOT)sources/cxx-stl/stlport/stlport


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Debug := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-Wno-abi \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo \
	-std=c++11 \
	-std=gnu++11


LOCAL_FDO_SUPPORT_Debug := false

# Flags passed to both C and C++ files.
MY_CFLAGS_Release := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fstack-protector \
	-fno-short-enums \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
	-Os \
	-fdata-sections \
	-ffunction-sections \
	-fomit-frame-pointer \
	-funwind-tables \
	-O2

MY_DEFS_Release := \
	'-DTENCENT_FITSCREEN=1' \
	'-DTENCENT_CHANGES_SPDY=1' \
	'-DTENCENT_CHANGES_HTTP_PROXY=1' \
	'-DTENCENT_CHANGES_QPROXY=1' \
	'-DTENCENT_CHANGES_SOCKET=1' \
	'-DTENCENT_12306_TICKET=1' \
	'-DTENCENT_ALIPAY_USERAGENT=1' \
	'-DTENCENT_CHANGES_PRECONNECT=1' \
	'-DTENCENT_CHANGES_LBS=1' \
	'-DTENCENT_SECURITY_CHECK=1' \
	'-DTENCENT_CHANGES=1' \
	'-DTENCENT_CHANGES_REPORT=1' \
	'-DTENCENT_CHANGES_MISSING_TILES_OPT=1' \
	'-DTENCENT_AD_FILTER=1' \
	'-DTENCENT_CHANGES_DOWNLOAD_GARBLED=1' \
	'-DTENCENT_SAVE_FLOW_NOTIFICATION=1' \
	'-DTENCENT_CHANGES_ERROR_PAGE=1' \
	'-DTENCENT_CHANGES_WML=1' \
	'-DENABLE_WML=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DBLINK_SCALE_FILTERS_AT_RECORD_TIME' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DENABLE_WEBRTC=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_BROWSER_CDMS' \
	'-DENABLE_CONFIGURATION_POLICY' \
	'-DDISCARDABLE_MEMORY_ALWAYS_SUPPORTED_NATIVELY' \
	'-DSYSTEM_NATIVELY_SIGNALS_MEMORY_PRESSURE' \
	'-DENABLE_EGLIMAGE=1' \
	'-DCLD_VERSION=1' \
	'-DENABLE_PRINTING=1' \
	'-DENABLE_MANAGED_USERS=1' \
	'-DDATA_REDUCTION_FALLBACK_HOST="http://compress.googlezip.net:80/"' \
	'-DDATA_REDUCTION_DEV_HOST="http://proxy-dev.googlezip.net:80/"' \
	'-DSPDY_PROXY_AUTH_ORIGIN="https://proxy.googlezip.net:443/"' \
	'-DDATA_REDUCTION_PROXY_PROBE_URL="http://check.googlezip.net/connect"' \
	'-DDATA_REDUCTION_PROXY_WARMUP_URL="http://www.gstatic.com/generate_204"' \
	'-DVIDEO_HOLE=1' \
	'-DPROTOBUF_USE_DLLS' \
	'-DGOOGLE_PROTOBUF_NO_RTTI' \
	'-DGOOGLE_PROTOBUF_NO_STATIC_INITIALIZER' \
	'-DSK_ENABLE_INST_COUNT=0' \
	'-DSK_SUPPORT_GPU=1' \
	'-DGR_GL_CUSTOM_SETUP_HEADER="GrGLConfig_chrome.h"' \
	'-DSK_ENABLE_LEGACY_API_ALIASING=1' \
	'-DSK_ATTR_DEPRECATED=SK_NOTHING_ARG1' \
	'-DGR_GL_IGNORE_ES3_MSAA=0' \
	'-DSK_WILL_NEVER_DRAW_PERSPECTIVE_TEXT' \
	'-DSK_SUPPORT_LEGACY_GETTOPDEVICE' \
	'-DSK_SUPPORT_LEGACY_BITMAP_CONFIG' \
	'-DSK_SUPPORT_LEGACY_DEVICE_VIRTUAL_ISOPAQUE' \
	'-DSK_SUPPORT_LEGACY_N32_NAME' \
	'-DSK_SUPPORT_LEGACY_SETCONFIG' \
	'-DSK_IGNORE_ETC1_SUPPORT' \
	'-DSK_IGNORE_GPU_DITHER' \
	'-DSK_SUPPORT_LEGACY_GETTOTALCLIP' \
	'-DSK_BUILD_FOR_ANDROID' \
	'-DSK_USE_POSIX_THREADS' \
	'-DSK_DEFERRED_CANVAS_USES_FACTORIES=1' \
	'-DU_USING_ICU_NAMESPACE=0' \
	'-DMESA_EGL_NO_X11_HEADERS' \
	'-DUSE_OPENSSL=1' \
	'-DUSE_OPENSSL_CERTS=1' \
	'-D__STDC_CONSTANT_MACROS' \
	'-D__STDC_FORMAT_MACROS' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DNDEBUG' \
	'-DNVALGRIND' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=0' \
	'-D_FORTIFY_SOURCE=2'


# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES_Release := \
	$(LOCAL_PATH)/$(gyp_shared_intermediate_dir)/shim_headers/icuuc/target \
	$(LOCAL_PATH)/$(gyp_shared_intermediate_dir)/shim_headers/icui18n/target \
	$(LOCAL_PATH)/$(gyp_shared_intermediate_dir)/shim_headers/ashmem/target \
	$(LOCAL_PATH)/$(gyp_shared_intermediate_dir) \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/third_party/khronos \
	$(LOCAL_PATH)/gpu \
	$(LOCAL_PATH)/skia/config \
	$(LOCAL_PATH)/$(gyp_shared_intermediate_dir)/protoc_out \
	$(LOCAL_PATH)/third_party/protobuf \
	$(LOCAL_PATH)/third_party/protobuf/src \
	$(LOCAL_PATH)/third_party/re2 \
	$(LOCAL_PATH)/third_party/skia/src/core \
	$(LOCAL_PATH)/third_party/skia/include/core \
	$(LOCAL_PATH)/third_party/skia/include/effects \
	$(LOCAL_PATH)/third_party/skia/include/pdf \
	$(LOCAL_PATH)/third_party/skia/include/gpu \
	$(LOCAL_PATH)/third_party/skia/include/lazy \
	$(LOCAL_PATH)/third_party/skia/include/pathops \
	$(LOCAL_PATH)/third_party/skia/include/pipe \
	$(LOCAL_PATH)/third_party/skia/include/ports \
	$(LOCAL_PATH)/third_party/skia/include/utils \
	$(LOCAL_PATH)/skia/ext \
	$(LOCAL_PATH)/third_party/icu/source/common \
	$(LOCAL_PATH)/third_party/icu/source/i18n \
	$(LOCAL_PATH)/$(gyp_shared_intermediate_dir)/ui/gl \
	$(LOCAL_PATH)/third_party/mesa/src/include \
	$(PWD)/frameworks/wilhelm/include \
	$(PWD)/bionic \
	$(NDK_ROOT)sources/cxx-stl/stlport/stlport


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Release := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-Wno-abi \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo \
	-std=c++11 \
	-std=gnu++11


LOCAL_FDO_SUPPORT_Release := false

LOCAL_CFLAGS := $(MY_CFLAGS_$(GYP_CONFIGURATION)) $(MY_DEFS_$(GYP_CONFIGURATION))
LOCAL_FDO_SUPPORT := $(LOCAL_FDO_SUPPORT_$(GYP_CONFIGURATION))
LOCAL_C_INCLUDES := $(GYP_COPIED_SOURCE_ORIGIN_DIRS) $(LOCAL_C_INCLUDES_$(GYP_CONFIGURATION))
LOCAL_CPPFLAGS := $(LOCAL_CPPFLAGS_$(GYP_CONFIGURATION))
LOCAL_ASFLAGS := $(LOCAL_CFLAGS)
### Rules for final target.

LOCAL_LDFLAGS_Debug := \
	-Wl,-z,now \
	-Wl,-z,relro \
	-Wl,--fatal-warnings \
	-Wl,-z,noexecstack \
	-fPIC \
	-Wl,-z,relro \
	-Wl,-z,now \
	-fuse-ld=gold \
	-nostdlib \
	-Wl,--no-undefined \
	-Wl,--exclude-libs=ALL \
	-Wl,--icf=safe \
	-Wl,--warn-shared-textrel \
	-Wl,-O1 \
	-Wl,--as-needed


LOCAL_LDFLAGS_Release := \
	-Wl,-z,now \
	-Wl,-z,relro \
	-Wl,--fatal-warnings \
	-Wl,-z,noexecstack \
	-fPIC \
	-Wl,-z,relro \
	-Wl,-z,now \
	-fuse-ld=gold \
	-nostdlib \
	-Wl,--no-undefined \
	-Wl,--exclude-libs=ALL \
	-Wl,--icf=safe \
	-Wl,-O1 \
	-Wl,--as-needed \
	-Wl,--gc-sections \
	-Wl,--warn-shared-textrel


LOCAL_LDFLAGS := $(LOCAL_LDFLAGS_$(GYP_CONFIGURATION))

LOCAL_STATIC_LIBRARIES := \
	gpu_disk_cache_proto_gyp \
	skia_skia_library_gyp \
	ui_gl_gl_gyp

# Enable grouping to fix circular references
LOCAL_GROUP_STATIC_LIBRARIES := true

LOCAL_SHARED_LIBRARIES := \
	libstlport \
	libdl

# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: gpu_command_buffer_service_gyp

# Alias gyp target name.
.PHONY: command_buffer_service
command_buffer_service: gpu_command_buffer_service_gyp

include $(BUILD_STATIC_LIBRARY)
