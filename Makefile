# [K] (C)2020
# http://github.com/kongfl888

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-i18n-smartdns-zh-cn
PKG_VERSION:=1.2020.30
PKG_RELEASE:=10
PKG_DATE:=20200712

PKG_MAINTAINER:=kongfl888 <kongfl888@outlook.com>
PKG_LICENSE:=GPL-3.0

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=LuCI
  SUBMENU:=Luci
  TITLE:=luci-i18n-smartdns-zh-cn
  PKGARCH:=all
  DEPENDS:=+luci-app-smartdns
endef

define Package/$(PKG_NAME)/description
	luci-i18n-smartdns-zh-cn
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/i18n
	po2lmo ./po/zh-cn/smartdns.po $(1)/usr/lib/lua/luci/i18n/smartdns.zh-cn.lmo
endef

define Package/$(PKG_NAME)/postinst
#!/bin/sh
endef

define Package/$(PKG_NAME)/postrm
#!/bin/sh
endef

$(eval $(call BuildPackage,$(PKG_NAME)))

