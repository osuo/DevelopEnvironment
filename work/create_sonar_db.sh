#!/bin/bash

#
DIRNAME=${0%/*}
MYSQL_CONTAINER=work_mysql_1
MYSQL_PASSWORD=hogehoge

# dockerコンテナを起動してデータをロードする
docker run -i --link $MYSQL_CONTAINER:mysql --rm mysql mysql -h mysql -uroot -p$MYSQL_PASSWORD < ./$DIRNAME/create_sonar_db.sql
