#!/bin/sh

#
BOX_NAME=default

VBoxManage controlvm $BOX_NAME natpf1 delete mysql
