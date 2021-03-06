################################################################################
#
# LIBVA_V4L2_REQUEST
#
################################################################################

LIBVA_V4L2_REQUEST_VERSION = 3e2fd00dbbb58beb7da58a9cd85ff15e95ae7ca4
LIBVA_V4L2_REQUEST_SITE = $(call github,Sash0k,libva-v4l2-request,$(LIBVA_V4L2_REQUEST_VERSION))
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
