#############################################################
#
# Support for EQ3CONFIGD Daemon
#
#############################################################

EQ3CONFIGD_VERSION = 1.1.0
EQ3CONFIGD_SITE = $(BR2_EXTERNAL_EQ3_PATH)/package/eq3configd
EQ3CONFIGD_SITE_METHOD = local

define EQ3CONFIGD_USERS
  eq3configd -1 eq3configd -1 * - - - eQ3 config daemon
endef

define EQ3CONFIGD_INSTALL_INIT_SYSV
  $(INSTALL) -m 0755 -D $(@D)/S50eq3configd \
    $(TARGET_DIR)/etc/init.d/S50eq3configd
endef

$(eval $(generic-package))
