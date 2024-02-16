DEBUG=0
FINALPACKAGE=1
PACKAGE_VERSION = 2.0

TARGET := iphone:clang:latest:14.0
INSTALL_TARGET_PROCESSES = Dopamine2

include $(THEOS)/makefiles/common.mk

ARCHS = arm64

APPLICATION_NAME = Dopamine2
$(APPLICATION_NAME)_FILES = main.m dopamineAppDelegate.m dopamineRootViewController.m
$(APPLICATION_NAME)_FRAMEWORKS = UIKit CoreGraphics
$(APPLICATION_NAME)_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/application.mk
