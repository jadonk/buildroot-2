################################################################################
#
# csky arch
#
################################################################################

CSKY_ARCH_VERSION = 32b8ac31f3c832abb9d0fed512e3e695f5f8a60d

ifneq ($(BR2_LINUX_KERNEL_EXT_CSKY_ARCH_VERSION), "")
CSKY_ARCH_VERSION = $(BR2_LINUX_KERNEL_EXT_CSKY_ARCH_VERSION)
endif

ifeq ($(BR2_LINUX_KERNEL_EXT_CSKY_ARCH_GITHUB),y)
CSKY_ARCH_SITE = $(call github,c-sky,csky-linux,$(CSKY_ARCH_VERSION))
else
CSKY_ARCH_SITE = $(BR2_LINUX_KERNEL_EXT_CSKY_ARCH_GIT_URL)
CSKY_ARCH_SITE_METHOD = git
endif

$(eval $(generic-package))
