#!/bin/sh
#
# VirtualBox上のインスタンスのNATネットワークのポートフォワード設定を行います

#
BOX_NAME=Docker

VBoxManage controlvm $BOX_NAME natpf1 "proxy,tcp,,80,,80"
VBoxManage controlvm $BOX_NAME natpf1 "mysql,tcp,,3306,,3306"
VBoxManage controlvm $BOX_NAME natpf1 "gitbucket-ssh,tcp,,29418,,29418"
#VBoxManage controlvm $BOX_NAME natpf1 "glassfish,tcp,,14848,,14848"
#VBoxManage controlvm $BOX_NAME natpf1 "selenium-hub,tcp,,4444,,4444"
#VBoxManage controlvm $BOX_NAME natpf1 "selenium-chrome,tcp,,5900,,5900"
#VBoxManage controlvm $BOX_NAME natpf1 "selenium-firefox,tcp,,5901,,5901"
#VBoxManage controlvm $BOX_NAME natpf1 "Nexus,tcp,,18081,,18081"
#VBoxManage controlvm $BOX_NAME natpf1 "SonarQube,tcp,,9000,,9000"
#VBoxManage controlvm $BOX_NAME natpf1 "SonarQube for Orders,tcp,,19000,,19000"
#VBoxManage controlvm $BOX_NAME natpf1 "Tomcat,tcp,,8888,,8888"
#VBoxManage controlvm $BOX_NAME natpf1 "imap,tcp,,143,,143"
#VBoxManage controlvm $BOX_NAME natpf1 "jenkins-slave,tcp,,50000,,50000"
#VBoxManage controlvm $BOX_NAME natpf1 "jenkins-slave for Orders,tcp,,51000,,51000"
#VBoxManage controlvm $BOX_NAME natpf1 "mailhog1_smtp,tcp,,1025,,1025"
#VBoxManage controlvm $BOX_NAME natpf1 "mailhog1_web,tcp,,8025,,8025"
#VBoxManage controlvm $BOX_NAME natpf1 "mailhog2_smtp,tcp,,1125,,1125"
#VBoxManage controlvm $BOX_NAME natpf1 "mailhog2_web,tcp,,8125,,8125"
#VBoxManage controlvm $BOX_NAME natpf1 "proFTPD1,tcp,,20,,20"
#VBoxManage controlvm $BOX_NAME natpf1 "proFTPD2,tcp,,21,,21"
#VBoxManage controlvm $BOX_NAME natpf1 "smtp,tcp,,25,,25"
VBoxManage controlvm $BOX_NAME natpf1 "ssh add,tcp,,22,,22"
