#!/bin/sh

#
BOX_NAME=default

VBoxManage showvminfo $BOX_NAME | grep '^NIC'

