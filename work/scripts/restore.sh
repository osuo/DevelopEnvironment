#!/bin/sh

# PROJECTの設定 未設定もしくは空ならデフォルトを設定
if [ ! -n "${PROJECT-}" ] ; then
  PROJECT=dev
fi

# SERVICESの設定
# docker-compose.yml に 同様のサービスを用意しておく
SERVICES="jenkins mysql redmine sonarqube nexus gitbucket"

# SERVICESの設定 DVC サービス名に'_data'を付与する
# docker-compose.yml に 同様のサービスを用意しておく
for service in $SERVICES ; do
  DVC_SERVICES=$DVC_SERVICES" ${service}_data"
done

# DVCサービスを作成
docker-compose -p $PROJECT up -d $DVC_SERVICES

# リストア
# バックアップファイルをカレントディレクトリにおいて、実行する
# 注意！：データコンテナ内の当該データが上書きされちゃいます！
# 必要なものをコメントアウトして使おう！
#docker run --rm --volumes-from ${PROJECT}_jenkins_data_1 -v $(pwd):/backup osuo/docker-backup restore jnekins.tgz
#docker run --rm --volumes-from ${PROJECT}_gitbucket_data_1 -v $(pwd):/backup osuo/docker-backup restore gitbucket.tgz
#docker run --rm --volumes-from ${PROJECT}_mysql_data_1 -v $(pwd):/backup osuo/docker-backup restore mysql.tgz
#docker run --rm --volumes-from ${PROJECT}_redmine_data_1 -v $(pwd):/backup osuo/docker-backup restore redmine.tgz
#docker run --rm --volumes-from ${PROJECT}_sonarqube_data_1 -v $(pwd):/backup osuo/docker-backup restore sonarqube.tgz
#docker run --rm --volumes-from ${PROJECT}_nexus_data_1 -v $(pwd):/backup osuo/docker-backup restore nexus.tgz

