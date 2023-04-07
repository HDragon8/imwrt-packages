#
# Copyright (C) 2021 Lean <coolsnowwolf@gmail.com>
#
# Copyright (C) 2021 ImmortalWrt
# <https://immortalwrt.org>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=Anoodles-default-settings
PKG_VERSION:=1.1
PKG_RELEASE:=$(COMMITCOUNT)

PKG_LICENSE:=GPL-3.0

include $(INCLUDE_DIR)/package.mk

define Package/Anoodles-default-settings
  SECTION:=luci
  CATEGORY:=LuCI
  TITLE:=LuCI support for Default Settings
  PKGARCH:=all
  DEPENDS:=+luci-lib-base +luci
endef

define Package/Anoodles-default-settings-chn
  $(Package/Anoodles-default-settings)
  TITLE+= (Optimize for CHN users)
  DEPENDS:=+Anoodles-default-settings +@LUCI_LANG_zh_Hans
endef

define Build/Prepare
	chmod -R +x ./files/usr/share target/*/{*,}/base-files/{etc/init.d,usr/bin} >/dev/null || true
endef

define Build/Compile
endef

define Package/Anoodles-default-settings/install
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(INSTALL_BIN) ./files/99-default-settings $(1)/etc/uci-defaults/
	$(CP) ./files/* $(1)/
	echo $(BOARD)$(TARGETID)
	if [ -d ./target/$(BOARD)/base-files/. ]; then \
		$(CP) ./target/$(BOARD)/base-files/* $(1)/; \
	fi
	if [ -d ./target/$(TARGETID)/base-files/. ]; then \
		$(CP) ./target/$(TARGETID)/base-files/* $(1)/; \
	fi;
endef

define Package/Anoodles-default-settings-chn/install
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(INSTALL_BIN) ./files/99-default-settings-chinese $(1)/etc/uci-defaults/

	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/i18n
	po2lmo ./i18n/default.zh_Hans.po $(1)/usr/lib/lua/luci/i18n/default.zh-cn.lmo
	po2lmo ./i18n/more.zh_Hans.po $(1)/usr/lib/lua/luci/i18n/more.zh-cn.lmo
endef

$(eval $(call BuildPackage,Anoodles-default-settings))
$(eval $(call BuildPackage,Anoodles-default-settings-chn))
