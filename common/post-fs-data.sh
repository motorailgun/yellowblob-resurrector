#!/system/bin/sh
# This script will be executed in post-fs-data mode
# More info in the main Magisk thread

# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

#Copy original fonts.xml to the MODDIR to overwrite dummy file
cp /dev/magisk/mirror/system/etc/fonts.xml $MODDIR/system/etc

#Change fonts.xml file
sed -i 's@<font weight="400" style="normal">NotoColorEmoji.ttf</font>@<font weight="400" style="normal">NotoColorEmoji_M.ttf</font>\n	</family>\n	    <family lang="und-Zsye">\n		<font weight="500" style="normal">NotoColorEmoji_N.ttf</font>\n	</family>	    <family lang="und-Zsye">		<font weight="400" style="normal">NotoColorEmoji.ttf</font>@g' $MODDIR/system/etc/fonts.xml
