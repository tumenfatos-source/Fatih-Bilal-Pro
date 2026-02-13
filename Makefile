export THEOS_DEVICE_IP = 127.0.0.1
export THEOS_DEVICE_PORT = 2222

TARGET := iphone:clang:latest:14.0
ARCHS = arm64 arm64e

DEBUG = 0
FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FatihHile

FatihHile_FILES = Tweak.x
FatihHile_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
