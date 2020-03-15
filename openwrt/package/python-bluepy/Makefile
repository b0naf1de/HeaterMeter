#
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-bluepy
PKG_VERSION=1.3.0
PKG_RELEASE=$(PKG_VERSION)
PKG_LICENSE:=Python-2.0

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/IanHarvey/bluepy
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_VERSION:=v/$(PKG_VERSION)
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz

#PKG_BUILD_DIR:=$(BUILD_DIR)/bluepy-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
$(call include_mk, python-package.mk)

define Package/python-bluepy
   SUBMENU:=Python
   SECTION:=lang
   CATEGORY:=Languages
   TITLE:=python-bluepy
   URL:=https://github.com/bluepy/bluepy
   DEPENDS:=+python-light +bluez-libs +glib2
endef

define Package/python-bluepy/description
	bluez python bindings
endef

define Build/Compile
	$(call Build/Compile/PyMod,,install --prefix=/usr --root="$(PKG_INSTALL_DIR)")
endef

define Package/python-bluepy/install
	$(INSTALL_DIR) $(1)$(PYTHON_PKG_DIR)
	$(CP) \
	   $(PKG_INSTALL_DIR)$(PYTHON_PKG_DIR)/* \
	   $(1)$(PYTHON_PKG_DIR) 
endef

$(eval $(call BuildPackage,python-bluepy))
