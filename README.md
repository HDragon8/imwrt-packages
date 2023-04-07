# imwrt-packages

#Copy from
1、https://github.com/kenzok8/small-package

2、https://github.com/kiddin9/openwrt-packages

#### 使用方式（三选一）：

1. 先cd进package目录，然后执行

```bash
 git clone https://github.com/HDragon8/imwrt-packages
```
2. 或者添加下面代码到feeds.conf.default文件

```bash
 src-git HDragon8 https://github.com/HDragon8/imwrt-packages.git
```
3. lede/下运行 或者openwrt/下运行

```bash
git clone https://github.com/HDragon8/imwrt-packages package/noodles
