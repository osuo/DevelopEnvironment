FROM tomcat:8.0-jre8
MAINTAINER hagihara.k@gmail.com

# manager ツールを使えるようにする
COPY conf/tomcat-users.xml /usr/local/tomcat/conf/

# タイムゾーンの変更
#
# 参考：http://serverfault.com/questions/685837/how-to-set-the-hostname-for-a-debian-jessie-system
# これではできず。。。
# RUN apt-get update && apt-get install -y dbus
# RUN timedatectl set-timezone Asia/Tokyo
#
# 参考：https://siguniang.wordpress.com/2015/03/20/set-timezone/
RUN echo "Asia/Tokyo" | tee /etc/timezone
RUN dpkg-reconfigure --frontend noninteractive tzdata

