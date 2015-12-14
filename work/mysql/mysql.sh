#!/bin/sh

# PROJECTの設定 未設定もしくは空ならデフォルトを設定
if [ ! -n "${PROJECT-}" ] ; then
  PROJECT=dev
fi

#
#DIRNAME=${0%/*}
MYSQL_CONTAINER=${PROJECT}_mysql_1
MYSQL_PASSWORD=hogehoge

#
exec docker run -it --link $MYSQL_CONTAINER:mysql --rm mysql mysql -h mysql -uroot -p$MYSQL_PASSWORD
