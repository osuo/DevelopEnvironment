FROM selenium/node-chrome-debug
MAINTAINER hagihara.k@gmail.com

# rootで
USER root

# タイムゾーンの変更
#
# 参考：http://serverfault.com/questions/685837/how-to-set-the-hostname-for-a-debian-jessie-system
# これではできず。。。
# RUN apt-get update && apt-get install -y dbus
# RUN timedatectl set-timezone Asia/Tokyo
#
# for Ubuntu
# 参考：https://siguniang.wordpress.com/2015/03/20/set-timezone/
# 参考：http://d.hatena.ne.jp/pasela/20090410/timezone
#RUN echo "Asia/Tokyo" | tee /etc/timezone
# seleniumの場合は/etc/timezoneよりも/etc/localtimeが優先されたため
# でもnodeはうまくいかない...
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
RUN dpkg-reconfigure --frontend noninteractive tzdata

# seluserに戻す
USER seluser

# VNC
# これやってもVncViewerなどで接続できず...
RUN mkdir -p ~/.vnc
RUN x11vnc -storepasswd secret ~/.vnc/passwd

