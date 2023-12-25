#!/bin/bash
function git_clone() {
  git clone --depth 1 $1 $2 || true
 }
function git_sparse_clone() {
  branch="$1" rurl="$2" localdir="$3" && shift 3
  git clone -b $branch --depth 1 --filter=blob:none --sparse $rurl $localdir
  cd $localdir
  git sparse-checkout init --cone
  git sparse-checkout set $@
  mv -n $@ ../
  cd ..
  rm -rf $localdir
  }
function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}
git clone --depth 1 https://github.com/HDragon8/A-default-settings A-default-settings
#git clone --depth 1 https://github.com/HDragon8/imwrt-default-settings imwrt-default-settings
git clone --depth 1 https://github.com/kiddin9/luci-theme-edge
git clone --depth 1 https://github.com/kiddin9/openwrt-amule-dlp && mvdir openwrt-amule-dlp
git clone --depth 1 https://github.com/yichya/luci-app-xray
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall-packages && mvdir openwrt-passwall-packages
git clone --depth 1 https://github.com/fw876/helloworld && mvdir helloworld
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall passwall1 && mv -n passwall1/luci-app-passwall  ./; rm -rf passwall1
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall2 passwall2 && mv -n passwall2/luci-app-passwall2 ./;rm -rf passwall2
git clone --depth 1 https://github.com/Lienol/openwrt-package
git clone --depth 1 https://github.com/messense/aliyundrive-webdav aliyundrive && mv -n aliyundrive/openwrt/* ./ ; rm -rf aliyundrive
git clone --depth 1 https://github.com/messense/aliyundrive-fuse aliyundrive && mv -n aliyundrive/openwrt/* ./;rm -rf aliyundrive
git clone --depth 1 https://github.com/ysc3839/openwrt-minieap
git clone --depth 1 https://github.com/ysc3839/luci-proto-minieap
git clone --depth 1 https://github.com/BoringCat/luci-app-mentohust
git clone --depth 1 https://github.com/BoringCat/luci-app-minieap
git clone --depth 1 https://github.com/peter-tank/luci-app-dnscrypt-proxy2
git clone --depth 1 https://github.com/peter-tank/luci-app-autorepeater
git clone --depth 1 https://github.com/rufengsuixing/luci-app-autoipsetadder
git clone --depth 1 https://github.com/ElvenP/luci-app-onliner
git clone --depth 1 https://github.com/rufengsuixing/luci-app-usb3disable
git clone --depth 1 https://github.com/riverscn/openwrt-iptvhelper && mvdir openwrt-iptvhelper
git clone --depth 1 https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk
git clone --depth 1 https://github.com/NateLol/luci-app-beardropper
git clone --depth 1 https://github.com/yaof2/luci-app-ikoolproxy
git clone --depth 1 https://github.com/project-lede/luci-app-godproxy
git clone --depth 1 https://github.com/sbwml/openwrt-alist && mvdir openwrt-alist
git clone --depth 1 https://github.com/tty228/luci-app-wechatpush
git clone --depth 1 https://github.com/4IceG/luci-app-sms-tool smstool && mvdir smstool
git clone --depth 1 https://github.com/shanglanxin/luci-app-homebridge
git clone --depth 1 https://github.com/esirplayground/luci-app-poweroff
git clone --depth 1 https://github.com/jerrykuku/luci-app-vssr
git clone --depth 1 https://github.com/jerrykuku/luci-app-ttnode
#git clone --depth 1 https://github.com/jerrykuku/luci-app-jd-dailybonus
git clone --depth 1 https://github.com/noiver/luci-app-jd-dailybonus
git clone --depth 1 https://github.com/jerrykuku/luci-app-go-aliyundrive-webdav
git clone --depth 1 https://github.com/sirpdboy/luci-app-advanced
git clone --depth 1 https://github.com/sirpdboy/luci-theme-opentopd
#git clone --depth 1 https://github.com/sirpdboy/luci-app-netdata
#git clone --depth 1 https://github.com/Jason6111/luci-app-netdata
git clone --depth 1 https://github.com/sirpdboy/luci-app-poweroffdevice
git clone --depth 1 https://github.com/sirpdboy/luci-app-autotimeset
git clone --depth 1 https://github.com/KFERMercer/luci-app-tcpdump
#git clone --depth 1 https://github.com/jefferymvp/luci-app-koolproxyR
git clone --depth 1 https://github.com/wolandmaster/luci-app-rtorrent
#git clone --depth 1 https://github.com/NateLol/luci-app-oled
#git clone --depth 1 https://github.com/lloyd18/luci-app-npc
git clone --depth 1 https://github.com/hubbylei/luci-app-clash
git clone --depth 1 https://github.com/destan19/OpenAppFilter && mvdir OpenAppFilter
git clone --depth 1 https://github.com/lvqier/luci-app-dnsmasq-ipset
git clone --depth 1 https://github.com/walkingsky/luci-wifidog luci-app-wifidog
git clone --depth 1 https://github.com/CCnut/feed-netkeeper && mvdir feed-netkeeper
git clone --depth 1 https://github.com/sensec/luci-app-udp2raw
git clone --depth 1 https://github.com/jerrykuku/lua-maxminddb
git clone --depth 1 https://github.com/LGA1150/openwrt-sysuh3c && mvdir openwrt-sysuh3c
git clone --depth 1 https://github.com/gdck/luci-app-cupsd cupsd1 && mv -n cupsd1/luci-app-cupsd cupsd1/cups/cups ./ ; rm -rf cupsd1
#git clone --depth 1 https://github.com/QiuSimons/openwrt-mos && mv -n openwrt-mos/*mosdns ./ ; rm -rf openwrt-mos
git clone --depth 1 https://github.com/sbwml/luci-app-mosdns openwrt-mos && mv -n openwrt-mos/{*mosdns,v2dat} ./; rm -rf openwrt-mos
git clone --depth 1 https://github.com/peter-tank/luci-app-fullconenat
git clone --depth 1 https://github.com/sundaqiang/openwrt-packages && mv -n openwrt-packages/luci-* ./; rm -rf openwrt-packages
git clone --depth 1 https://github.com/kenzok8/luci-theme-ifit ifit && mv -n ifit/luci-theme-ifit ./;rm -rf ifit
git clone --depth 1 https://github.com/kenzok78/openwrt-minisign
git clone --depth 1 https://github.com/thinktip/luci-theme-neobird
git clone --depth 1 https://github.com/pymumu/luci-app-smartdns
git clone --depth 1 https://github.com/ophub/luci-app-amlogic amlogic && mv -n amlogic/luci-app-amlogic ./;rm -rf amlogic
git clone --depth 1 https://github.com/lisaac/luci-app-dockerman dockerman && mv -n dockerman/applications/* ./; rm -rf dockerman

git clone --depth 1 https://github.com/linkease/nas-packages && mv -n nas-packages/{network/services/*,multimedia/*} ./; rm -rf nas-packages
git clone --depth 1 https://github.com/linkease/nas-packages-luci && mv -n nas-packages-luci/luci/* ./; rm -rf nas-packages-luci
git clone --depth 1 https://github.com/linkease/istore && mv -n istore/luci/* ./; rm -rf istore
git clone --depth 1 https://github.com/linkease/openwrt-app-actions && mv -n openwrt-app-actions/applications/* ./;rm -rf openwrt-app-actions
git clone --depth 1 https://github.com/ZeaKyX/luci-app-speedtest-web
git clone --depth 1 https://github.com/ZeaKyX/speedtest-web
#git clone --depth 1 https://github.com/Huangjoe123/luci-app-eqos
git clone --depth 1 https://github.com/sirpdboy/luci-app-lucky
#git clone --depth 1 https://github.com/sirpdboy/luci-app-lucky lucik && mv -n lucik/luci-app-lucky ./ ; rm -rf lucik
git clone --depth 1 https://github.com/Hyy2001X/AutoBuild-Packages && rm -rf AutoBuild-Packages/luci-app-adguardhome && mvdir AutoBuild-Packages
git clone --depth 1 https://github.com/sirpdboy/luci-app-ddns-go ddns-go && mvdir ddns-go
#git_clone https://github.com/sirpdboy/netspeedtest && mv -n netspeedtest/luci-app-netspeedtest ./ ; rm -rf netspeedtest
git clone --depth 1 https://github.com/sirpdboy/netspeedtest && mvdir netspeedtest
#git clone --depth 1 https://github.com/HDragon8/add_openwrt_Build_name
git clone --depth 1 https://github.com/gngpp/luci-app-design-config
git clone --depth 1 -b js https://github.com/gngpp/luci-theme-design
git clone --depth 1 https://github.com/jerrykuku/luci-theme-argon
git clone --depth 1 https://github.com/jerrykuku/luci-app-argon-config
git clone --depth 1 https://github.com/esirplayground/LingTiGameAcc
git clone --depth 1 https://github.com/esirplayground/luci-app-LingTiGameAcc
git clone --depth 1 -b master https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic
#git clone --depth 1 https://github.com/AlexZhuo/luci-app-bandwidthd
git clone --depth 1 https://github.com/sirpdboy/chatgpt-web

git clone --depth 1 https://github.com/Diciya/luci-app-broadbandacc
git clone --depth 1 https://github.com/brvphoenix/luci-app-wrtbwmon wrtbwmon1 && mvdir wrtbwmon1
git clone --depth 1 https://github.com/brvphoenix/wrtbwmon wrtbwmon2 && mvdir wrtbwmon2

git clone --depth 1 https://github.com/vernesong/OpenClash && mv -n OpenClash/luci-app-openclash ./; rm -rf OpenClash

git clone --depth 1 https://github.com/Tencent-Cloud-Plugins/tencentcloud-openwrt-plugin-ddns && mv -n tencentcloud-openwrt-plugin-ddns/tencentcloud_ddns ./luci-app-tencentddns; rm -rf tencentcloud-openwrt-plugin-ddns
git clone --depth 1 https://github.com/Tencent-Cloud-Plugins/tencentcloud-openwrt-plugin-cos && mv -n tencentcloud-openwrt-plugin-cos/tencentcloud_ddns ./luci-app-tencentcloud-cos; rm -rf tencentcloud-openwrt-plugin-cos

git clone --depth 1 https://github.com/doushang/luci-app-shortcutmenu && mv -n luci-app-shortcutmenu/luci-app-shortcutmenu ./; rm -rf luci-app-shortcutmenu
git clone --depth 1 https://github.com/sbilly/netmaker-openwrt && mv -n netmaker-openwrt/netmaker ./; rm -rf netmaker-openwrt

git_sparse_clone main "https://github.com/sirpdboy/sirpdboy-package" "sirpdboypack" adguardhome luci-app-adguardhome
git_sparse_clone master "https://github.com/x-wrt/packages" "x-wrtpack" net/nft-qos
git_sparse_clone master "https://github.com/x-wrt/luci" "x-wrtluci" applications/luci-app-nft-qos

#svn export https://github.com/Tencent-Cloud-Plugins/tencentcloud-openwrt-plugin-ddns/trunk/tencentcloud_ddns luci-app-tencentddns
#svn export https://github.com/Tencent-Cloud-Plugins/tencentcloud-openwrt-plugin-cos/trunk/tencentcloud_cos luci-app-tencentcloud-cos
#svn export https://github.com/mingxiaoyu/luci-app-cloudflarespeedtest/trunk/applications/luci-app-cloudflarespeedtest
#svn export https://github.com/doushang/luci-app-shortcutmenu/trunk/luci-app-shortcutmenu
#svn export https://github.com/Ysurac/openmptcprouter-feeds/trunk/luci-app-iperf
git_sparse_clone master "https://github.com/kiddin9/openwrt-packages" "kiddin91" luci-app-fileassistant luci-app-bypass luci-app-eqos

rm -rf luci-app-netdata

#thunder
rm -rf luci-app-thunder
git_sparse_clone main "https://github.com/gngpp/thunder" "thunder1" openwrt/thunder openwrt/luci-app-thunder

git_sparse_clone develop "https://github.com/Ysurac/openmptcprouter-feeds" "enmptcp" luci-app-snmpd \
luci-app-packet-capture luci-app-mail msmtp
git_sparse_clone master "https://github.com/x-wrt/com.x-wrt" "x-wrt" natflow lua-ipops luci-app-macvlan
git_sparse_clone master "https://github.com/xiaoqingfengATGH/feeds-xiaoqingfeng" "xiaoqingfeng" homeredirect luci-app-homeredirect

#git_sparse_clone master "https://github.com/coolsnowwolf/packages" "leanpkg" net/miniupnpd net/mwan3 multimedia/UnblockNeteaseMusic-Go \
#multimedia/UnblockNeteaseMusic net/amule net/antileech net/baidupcs-web net/frp multimedia/gmediarender net/go-aliyundrive-webdav \
#net/qBittorrent-static net/qBittorrent net/transmission net/phtunnel libs/qtbase libs/qttools libs/rblibtorrent \
#net/uugamebooster net/verysync net/vlmcsd net/dnsforwarder net/nps net/tcpping net/netatalk net/pgyvpn net/n2n net/mosdns
#mv -f miniupnpd miniupnpd-iptables
git_sparse_clone master "https://github.com/coolsnowwolf/packages" "leanpkg" net/phtunnel multimedia/UnblockNeteaseMusic-Go multimedia/UnblockNeteaseMusic \
net/go-aliyundrive-webdav

git_sparse_clone master "https://github.com/coolsnowwolf/luci" "leluci" applications/luci-app-phtunnel applications/luci-app-unblockmusic applications/luci-app-wrtbwmon \
applications/luci-app-vsftpd applications/luci-app-easymesh applications/luci-app-webdav

git_sparse_clone master "https://github.com/coolsnowwolf/lede" "leanlede" package/lean/vsftpd-alt

mv -n luciapp/* ./ ; rm -Rf luciapp
#mv -n openwrt-passwall/* ./ ; rm -Rf openwrt-passwall
mv -n openwrt-package/* ./ ; rm -Rf openwrt-package

rm -rf luci-app-samba
rm -rf ./*/.git & rm -f ./*/.gitattributes
rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore

sed -i \
-e 's?include \.\./\.\./\(lang\|devel\)?include $(TOPDIR)/feeds/packages/\1?' \
-e 's?2. Clash For OpenWRT?3. Applications?' \
-e 's?\.\./\.\./luci.mk?$(TOPDIR)/feeds/luci/luci.mk?' \
-e 's/ca-certificates/ca-bundle/' \
*/Makefile

sed -i 's/luci-lib-ipkg/luci-base/g' luci-app-store/Makefile
sed -i "/minisign:minisign/d" luci-app-dnscrypt-proxy2/Makefile
#sed -i 's/+dockerd/+dockerd +cgroupfs-mount/' luci-app-docker*/Makefile
#sed -i '$i /etc/init.d/dockerd restart &' luci-app-docker*/root/etc/uci-defaults/*
sed -i 's/+libcap /+libcap +libcap-bin /' luci-app-openclash/Makefile
sed -i 's/\(+luci-compat\)/\1 +luci-theme-argon/' luci-app-argon-config/Makefile
sed -i 's/\(+luci-compat\)/\1 +luci-theme-design/' luci-app-design-config/Makefile
#sed -i 's/\(+luci-compat\)/\1 +luci-theme-argonne/' luci-app-argonne-config/Makefile
sed -i 's/ +uhttpd-mod-ubus//' luci-app-packet-capture/Makefile
sed -i 's/	ip.neighbors/	luci.ip.neighbors/' luci-app-wifidog/luasrc/model/cbi/wifidog/wifidog_cfg.lua
sed -i -e 's/nas/services/g' -e 's/NAS/Services/g' $(grep -rl 'nas\|NAS' luci-app-fileassistant)
#find -type f -name Makefile -exec sed -ri  's#mosdns[-_]neo#mosdns#g' {} \;

rm -rf luci-app-adguardhome/po/zh_Hans
cp -Rf luci-app-adguardhome/po/zh-cn luci-app-adguardhome/po/zh_Hans

rm -rf luci-app-wxedge/po/zh_Hans
cp -Rf luci-app-wxedge/po/zh-cn luci-app-wxedge/po/zh_Hans
rm -rf luci-app-wifischedule/po/zh_Hans
cp -Rf luci-app-wifischedule/po/zh-cn luci-app-wifischedule/po/zh_Hans
rm -rf luci-app-minidlna/po/zh_Hans
cp -Rf luci-app-minidlna/po/zh-cn luci-app-minidlna/po/zh_Hans
rm -rf luci-app-xunlei/po/zh_Hans
cp -Rf luci-app-xunlei/po/zh-cn luci-app-xunlei/po/zh_Hans

#bash diy/create_acl_for_luci.sh -a >/dev/null 2>&1
#bash diy/convert_translation.sh -a >/dev/null 2>&1

#rm -rf create_acl_for_luci.err & rm -rf create_acl_for_luci.ok
#rm -rf create_acl_for_luci.warn

exit 0
