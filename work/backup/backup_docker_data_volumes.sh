#!/bin/bash

#docker run --rm --volumes-from バックアップするDVC -v $(pwd):/backup osuo/docker-backup backup バックアップファイル名
docker run --rm --volumes-from work_jenkins_data_1 -v $(pwd):/backup osuo/docker-backup backup work_jenkins_data_1.tgz
docker run --rm --volumes-from work_nexus_data_1 -v $(pwd):/backup osuo/docker-backup backup work_nexus_data_1.tgz
docker run --rm --volumes-from work_sonarqube_data_1 -v $(pwd):/backup osuo/docker-backup backup work_sonarqube_data_1.tgz
docker run --rm --volumes-from work_redmine_data_1 -v $(pwd):/backup osuo/docker-backup backup work_redmine_data_1.tgz
docker run --rm --volumes-from work_mysql_data_1 -v $(pwd):/backup osuo/docker-backup backup work_mysql_data_1.tgz
docker run --rm --volumes-from work_gitbucket_data_1 -v $(pwd):/backup osuo/docker-backup backup work_gitbucket_data_1.tgz

