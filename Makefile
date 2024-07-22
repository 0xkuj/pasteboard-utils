export TARGET = iphone:clang:14.5:14.5
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TOOL_NAME = 
SUBPROJECTS += pbcopy pbpaste

include $(THEOS_MAKE_PATH)/tool.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
