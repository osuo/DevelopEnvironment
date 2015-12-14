#!/bin/sh
#
# VirtualBox上のインスタンスのNATネットワークのポートフォワード設定を行います

#
BOX_NAME=default

VBoxManage controlvm $BOX_NAME natpf1 "proxy,tcp,,8000,,80"
VBoxManage controlvm $BOX_NAME natpf1 "mysql,tcp,,3306,,3306"
VBoxManage controlvm $BOX_NAME natpf1 "gitbucket-ssh,tcp,,29418,,29418"
VBoxManage controlvm $BOX_NAME natpf1 "glassfish,tcp,,14848,,14848"
VBoxManage controlvm $BOX_NAME natpf1 "selenium-hub,tcp,,4444,,4444"
VBoxManage controlvm $BOX_NAME natpf1 "selenium-chrome,tcp,,5900,,5900"
VBoxManage controlvm $BOX_NAME natpf1 "selenium-firefox,tcp,,5901,,5901"
