TARGET := iphone:clang:latest:15.0
ARCHS = arm64 arm64e

DEBUG = 0
FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FatihProject

FatihProject_FILES = Tweak.x
FatihProject_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
