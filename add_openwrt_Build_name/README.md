# add_openwrt_Build_name
 添加编译者名字替换index

 Copy https://github.com/openwrtcompileshell/OpenwrtCompileScript 添加天气

 1、x86-index.htm

 rm -rf package/lean/autocore/files/x86/index.htm
 cp feeds/xxx/x86_index.htm package/lean/autocore/files/x86/index.htm

2、ARM-index.htm

 rm -rf package/lean/autocore/files/x86/index.htm 
 cp feeds/xxx/arm_index package/lean/autocore/files/arm/index.htm

 3、luci-mod-admin-full-index.htm

 rm -rf feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_status/index.htm
 cp feeds/xxx/luci-mod-admin-full_index feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_status/index.htm

 #添加翻译：
  sed -i '$a \#首页显示编译者\nmsgid "Compile_noodles"\nmsgstr "固件编译者"\n' package/lean/default-settings/po/zh-cn/default.po
  
 #修改zz-default-settings
 sed -i '$d' package/lean/default-settings/files/zzz-default-settings
 
 sed -i '$d' package/lean/default-settings/files/zzz-default-settings
 
 echo "echo \"xxx @ $(TZ=UTC-8 date "+%Y.%m.%d")\n" >> /etc/Compile_time" >> package/lean/default-settings/files/zzz-default-settings
 
 echo "exit 0" >> package/lean/default-settings/files/zzz-default-settings
