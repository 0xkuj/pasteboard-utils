export TARGET = iphone:clang:14.5:14.5
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TOOL_NAME = pbpaste

pbpaste_FILES = main.m
pbpaste_CFLAGS = -fobjc-arc
pbpaste_CODESIGN_FLAGS = -Sentitlements.plist
pbpaste_INSTALL_PATH = /usr/local/bin

include $(THEOS_MAKE_PATH)/tool.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
