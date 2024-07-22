export TARGET = iphone:clang:14.5:14.5
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TOOL_NAME = pbcopy

pbcopy_FILES = main.m
pbcopy_CFLAGS = -fobjc-arc
pbcopy_CODESIGN_FLAGS = -Sentitlements.plist
pbcopy_INSTALL_PATH = /usr/local/bin

include $(THEOS_MAKE_PATH)/tool.mk
