################################################################################
#
# facegame
#
################################################################################
FACEGAME_VERSION = master
FACEGAME_SITE = $(call github,computermouth,facegame,$(FACEGAME_VERSION))

define FACEGAME_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) opk
endef

define FACEGAME_INSTALL_OPK_IMAGES
	cp -vf $(@D)/facegame.opk $(BINARIES_DIR)/opks
endef
FACEGAME_POST_INSTALL_TARGET_HOOKS += FACEGAME_INSTALL_OPK_IMAGES


$(eval $(generic-package))
