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

PKG_NAME:=A-default-settings
PKG_VERSION:=1.2
PKG_RELEASE:=112

PKG_LICENSE:=GPL-3.0

include $(INCLUDE_DIR)/package.mk

define Package/A-default-settings
  SECTION:=luci
  CATEGORY:=LuCI
  TITLE:=LuCI support for Default Settings
  DEPENDS:=+luci
  PKGARCH:=all
endef

#define Package/A-default-settings-chn
#  $(Package/A-default-settings)
#  TITLE+= (Optimize for CHN users)
#  DEPENDS:=+A-default-settings +@LUCI_LANG_zh_Hans
#endef

define Build/Prepare
	chmod -R +x ./files/usr/share target/*/{*,}/base-files/{etc/init.d,usr/bin} >/dev/null || true
endef

define Build/Compile
endef

define Package/A-default-settings/install
	$(CP) ./files/* $(1)/
	echo $(BOARD)$(TARGETID)
	if [ -d ./target/$(BOARD)/base-files/. ]; then \
		$(CP) ./target/$(BOARD)/base-files/* $(1)/; \
	fi
	if [ -d ./target/$(TARGETID)/base-files/. ]; then \
		$(CP) ./target/$(TARGETID)/base-files/* $(1)/; \
	fi;
endef

#define Package/A-default-settings-chn/install
#	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/i18n
#	po2lmo ./i18n/default.zh_Hans.po $(1)/usr/lib/lua/luci/i18n/default.zh-cn.lmo
#	po2lmo ./i18n/more.zh_Hans.po $(1)/usr/lib/lua/luci/i18n/more.zh-cn.lmo
#endef

define Package/$(PKG_NAME)/postinst
#!/bin/sh

HOST_SED="$(subst ${STAGING_DIR_HOST},$${STAGING_DIR_HOST},$(SED))"
#HOST_LN="$(subst ${STAGING_DIR_HOST},$${STAGING_DIR_HOST},$(LN))"

[ -n "$${IPKG_INSTROOT}" ] && {
	$${HOST_SED} 's,^src/gz noodlesWrt_,src/gz openwrt_,g' -e '/^src\/gz openwrt_\(core\|base\|luci\|packages\|routing\|telephony\) /!d' "$${IPKG_INSTROOT}/etc/opkg/distfeeds.conf"
#
#	$${HOST_SED} 's/"192.168.1.1"/"192.168.100.1"/' \
#		"$${IPKG_INSTROOT}/usr/lib/lua/luci/controller/admin/system.lua" \
#		"$${IPKG_INSTROOT}/usr/lib/lua/luci/controller/admin/ota.lua" \
#		"$${IPKG_INSTROOT}/bin/config_generate"

#	$${HOST_SED} "s/'192\\.168\\.1\\.1'/'192.168.100.1'/; s/'openwrt\\.lan'/window.location.host/" "$${IPKG_INSTROOT}/www/luci-static/resources/view/system/flash.js"
#
#	$${HOST_SED} 's/s\.anonymous = true/s\.anonymous = true\ns\.addremove = true/' "$${IPKG_INSTROOT}/usr/lib/lua/luci/model/cbi/hd_idle.lua"
#
#	$${HOST_SED} 's#"/opt"#"/overlay/upper/opt/docker"#' "$${IPKG_INSTROOT}/usr/lib/lua/luci/model/cbi/admin_system/fstab/mount.lua"
#
#	rm -f "$${IPKG_INSTROOT}/sbin/jffs2reset"
#	$${HOST_LN} /sbin/firstboot "$${IPKG_INSTROOT}/sbin/jffs2reset"
#
#	$${HOST_SED} '/<link rel="shortcut icon" href="<%=media%>\/favicon.ico">/a         <link rel="stylesheet" href="<%=resource%>/easepi/easeicon.css?t=1649313193968">' \
#		"$${IPKG_INSTROOT}/usr/lib/lua/luci/view/themes/argon/header.htm" \
#		"$${IPKG_INSTROOT}/usr/lib/lua/luci/view/themes/argon_dark/header.htm" \
#		"$${IPKG_INSTROOT}/usr/lib/lua/luci/view/themes/argon_light/header.htm" \
#		"$${IPKG_INSTROOT}/usr/lib/lua/luci/view/themes/argon_dark_purple/header.htm" \
#		"$${IPKG_INSTROOT}/usr/lib/lua/luci/view/themes/argon_light_green/header.htm"
#
#	rm -f "$${IPKG_INSTROOT}/etc/uci-defaults/luci-argon-config"

}
true

endef

$(eval $(call BuildPackage,A-default-settings))
#$(eval $(call BuildPackage,A-default-settings-chn))
