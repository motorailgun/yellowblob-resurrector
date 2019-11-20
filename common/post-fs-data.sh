#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in post-fs-data mode

#Copy original fonts.xml to the MODDIR to overwrite dummy file
cp /dev/magisk/mirror/system/etc/fonts.xml $MODDIR/system/etc

#Change fonts.xml file
sed -i 's@<font weight="400" style="normal">NotoColorEmoji.ttf</font>@<font weight="400" style="normal">NotoColorEmoji_M.ttf</font>\n	</family>\n	    <family lang="und-Zsye">\n		<font weight="500" style="normal">NotoColorEmoji_N.ttf</font>\n	</family>	    <family lang="und-Zsye">		<font weight="400" style="normal">NotoColorEmoji.ttf</font>@g' $MODDIR/system/etc/fonts.xml
