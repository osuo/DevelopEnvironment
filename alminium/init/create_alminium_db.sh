#!/bin/sh

# PROJECTの設定 未設定もしくは空ならデフォルトを設定
if [ ! -n "${PROJECT-}" ] ; then
  PROJECT=dev
fi

#
DIRNAME=${0%/*}
DB_CONTAINER=${PROJECT}_alminium_mysql_1
DB_PASSWORD=hogehoge
LOAD_SQL_FILE=./$DIRNAME/create_almimium_db.sql
CONTAINER=mysql:8.0
CMD=mysql

# dockerコンテナを起動してデータをロードする
docker run -i --link $DB_CONTAINER:db --rm $CONTAINER $CMD -h db -uroot -p$MYSQL_PASSWORD < $LOAD_SQL_FILE

