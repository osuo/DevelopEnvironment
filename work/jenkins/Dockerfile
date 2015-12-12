FROM jenkins

# rootユーザにしてから、Aws CLI をインストールする
USER root

# AWS CLI のインストール
RUN curl -s https://bootstrap.pypa.io/get-pip.py -O
RUN python get-pip.py
RUN pip install awscli
RUN rm -f get-pip.py

# gradleのインストール
RUN curl -s https://downloads.gradle.org/distributions/gradle-2.9-bin.zip -O
RUN unzip gradle-2.9-bin.zip
RUN mkdir -p /usr/local
RUN mv gradle-2.9 /usr/local/
RUN ln -s /usr/local/gradle-2.9/bin/gradle /usr/local/bin/
RUN rm -f gradle-2.9-bin.zip

# mavenのイストール
RUN curl -s http://ftp.tsukuba.wide.ad.jp/software/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz -O
RUN tar xzf apache-maven-3.3.9-bin.tar.gz
RUN mv apache-maven-3.3.9 /usr/local/
RUN export PATH=$PATH:/usr/local/apache-maven-3.3.9/bin
RUN rm -f apache-maven-3.3.9-bin.tar.gz

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
