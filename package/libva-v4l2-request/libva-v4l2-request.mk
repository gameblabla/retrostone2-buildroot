################################################################################
#
# LIBVA_V4L2_REQUEST
#
################################################################################

LIBVA_V4L2_REQUEST_VERSION = 387ac1c17c82e16ea3810a0e3310675e6296d9ac
LIBVA_V4L2_REQUEST_SITE = $(call github,CalcProgrammer1,libva-v4l2-request,$(LIBVA_V4L2_REQUEST_VERSION))
LIBVA_V4L2_REQUEST_LICENSE = LGPL-2.1+
LIBVA_V4L2_REQUEST_LICENSE_FILES = COPYING
LIBVA_V4L2_REQUEST_INSTALL_STAGING = YES

# we're patching configure.in, but package cannot autoreconf with our version of
# autotools, so we have to do it manually instead of setting LIBVA_V4L2_REQUEST_AUTORECONF = YES
define LIBVA_V4L2_REQUEST_RUN_AUTOGEN
	cd $(@D) && PATH=$(BR_PATH) ./autogen.sh
endef

LIBVA_V4L2_REQUEST_PRE_CONFIGURE_HOOKS += LIBVA_V4L2_REQUEST_RUN_AUTOGEN
HOST_LIBVA_V4L2_REQUEST_PRE_CONFIGURE_HOOKS += LIBVA_V4L2_REQUEST_RUN_AUTOGEN

LIBVA_V4L2_REQUEST_DEPENDENCIES += host-automake host-autoconf host-libtool libva
HOST_LIBVA_V4L2_REQUEST_DEPENDENCIES += host-automake host-autoconf host-libtool

LIBVA_V4L2_REQUEST_CONF_OPTS += 

HOST_LIBVA_V4L2_REQUEST_CONF_OPTS +=

$(eval $(autotools-package))
$(eval $(host-autotools-package))
