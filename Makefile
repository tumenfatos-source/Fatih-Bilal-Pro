ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:13.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FatihProject
FatihProject_FILES = Tweak.x
FatihProject_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
