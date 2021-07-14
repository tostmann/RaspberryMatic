################################################################################
#
# Linux FT232R Projects and Stuff
#
################################################################################

FT232R_PROG_VERSION = 1.25
FT232R_PROG_LICENSE = GPL-2.0
FT232R_PROG_LICENSE_FILES = COPYING
FT232R_PROG_SOURCE = ft232r_prog-$(FT232R_PROG_VERSION).tar.gz
FT232R_PROG_SITE = http://rtr.ca/ft232r

define FT232R_PROG_BUILD_CMDS
        $(MAKE) $(TARGET_CONFIGURE_OPTS) LDFLAGS+="-lusb -lftdi" -C $(@D)
endef

define FT232R_PROG_INSTALL_TARGET_CMDS
  $(INSTALL) -D -m 0755 $(@D)/ft232r_prog $(TARGET_DIR)/usr/bin/
endef


$(eval $(generic-package))
