#!/bin/sh

#
BOX_NAME=Docker

VBoxManage showvminfo $BOX_NAME | grep '^NIC'

