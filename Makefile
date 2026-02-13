TARGET := iphone:clang:latest:14.5
ARCHS = arm64 arm64e

DEBUG = 0
FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Fatih-Bilal-Pro

Fatih-Bilal-Pro_FILES = Tweak.x
Fatih-Bilal-Pro_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
