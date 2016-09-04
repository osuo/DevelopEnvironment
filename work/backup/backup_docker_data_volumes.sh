#!/bin/bash

#docker run --rm --volumes-from バックアップするDVC -v $(pwd):/backup osuo/docker-backup backup バックアップファイル名
docker run --rm --volumes-from dev_jenkins_data_1 -v $(pwd):/backup osuo/docker-backup backup dev_jenkins_data_1.tgz
docker run --rm --volumes-from dev_nexus_data_1 -v $(pwd):/backup osuo/docker-backup backup dev_nexus_data_1.tgz
docker run --rm --volumes-from dev_sonarqube_data_1 -v $(pwd):/backup osuo/docker-backup backup dev_sonarqube_data_1.tgz
docker run --rm --volumes-from dev_redmine_data_1 -v $(pwd):/backup osuo/docker-backup backup dev_redmine_data_1.tgz
docker run --rm --volumes-from dev_mysql_data_1 -v $(pwd):/backup osuo/docker-backup backup dev_mysql_data_1.tgz
docker run --rm --volumes-from dev_gitbucket_data_1 -v $(pwd):/backup osuo/docker-backup backup dev_gitbucket_data_1.tgz

