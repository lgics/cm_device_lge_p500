#!/bin/sh

VENDOR=lge
DEVICE=p500
COMMON=msm7x27-common

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
#rm -rf $BASE/*

# Get common files
(cd ../$COMMON && ./extract-files.sh)

echo "Pulling device files..."
for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$`; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    adb pull /system/$FILE $BASE/$FILE
done

./setup-makefiles.sh
