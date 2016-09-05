FROM jenkinsci/jenkins:2.20

# rootユーザにしてから、Aws CLI をインストールする
USER root

# AWS CLI のインストール
RUN curl -s https://bootstrap.pypa.io/get-pip.py -O
RUN python get-pip.py
RUN pip install awscli
RUN rm -f get-pip.py

# 準備
RUN mkdir -p /usr/local

# gradleのインストール
RUN curl -s https://downloads.gradle.org/distributions/gradle-3.0-bin.zip -O
RUN unzip gradle-3.0-bin.zip
RUN mv gradle-3.0 /usr/local/
RUN ln -s /usr/local/gradle-3.0 /usr/local/gradle
RUN export GRADLE_HOME=/usr/local/gradle
RUN export PATH=$PATH:$GRADLE_HOME/bin
RUN rm -f gradle-3.0-bin.zip

# mavenのイストール
RUN curl -s http://ftp.tsukuba.wide.ad.jp/software/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz -O
RUN tar xzf apache-maven-3.3.9-bin.tar.gz
RUN mv apache-maven-3.3.9 /usr/local/
RUN ln -s /usr/local/apache-maven-3.3.9 /usr/local/maven
RUN export MAVEN_HOME=/usr/local/maven
RUN export PATH=$PATH:$MAVEN_HOME/bin
RUN rm -f apache-maven-3.3.9-bin.tar.gz

# node.js
RUN curl -s https://nodejs.org/dist/v6.5.0/node-v6.5.0-linux-x64.tar.xz -O
RUN tar xJf node-v6.5.0-linux-x64.tar.xz
RUN mv node-v6.5.0-linux-x64 /usr/local
RUN ln -s /usr/local/node-v6.5.0-linux-x64 /usr/local/node
RUN export NODE_HOME=/usr/local/node
RUN export PATH=$PATH:$NODE/bin
RUN rm -f node-v6.5.0-linux-x64.tar.gz

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

# jenkinsユーザに戻す
USER jenkins
