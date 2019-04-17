#
# This is a project Makefile. It is assumed the directory this Makefile resides in is a
# project subdirectory.
#

PROJECT_NAME := koffee-mon

IDF_PATH = esp-idf
EXTRA_COMPONENT_DIRS += src

BUILD_DIR_BASE ?= _build
RELEASE_DIR ?= _release

ESPPORT = /dev/tty.usbserial-DN0*
ESPBAUD ?= 1500000

# CFLAGS += -DINCLUDE_UNIT_TESTS
CFLAGS += -Wno-packed-bitfield-compat -Wno-char-subscripts

include $(IDF_PATH)/make/project.mk