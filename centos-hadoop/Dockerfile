# CentOS with JDK 8
# Author        qiwei

# build a new image with basic  centos
FROM centos-jdk-ssh
# who is the author
MAINTAINER qiwei


# copy the hadoop  archive to the image,and it will automaticlly unzip the tar file
ADD hadoop-2.7.4.tar.gz /usr/local/
# make a symbol link
RUN ln -s /usr/local/hadoop-2.7.4 /usr/local/hadoop

COPY core-site.xml /usr/local/hadoop/etc/hadoop/
COPY hdfs-site.xml /usr/local/hadoop/etc/hadoop/
COPY mapred-site.xml /usr/local/hadoop/etc/hadoop/
COPY yarn-site.xml /usr/local/hadoop/etc/hadoop/

RUN sed -i "s?JAVA_HOME=\${JAVA_HOME}?JAVA_HOME=/usr/local/java/jdk?g" /usr/local/hadoop/etc/hadoop/hadoop-env.sh

ENV HADOOP_HOME /usr/local/hadoop

ENV PATH ${HADOOP_HOME}/bin:${HADOOP_HOME}/sbin:$PATH

RUN echo . /etc/hadoop.sh >> ~/.bash_profile
COPY hadoop.sh /etc/hadoop.sh

CMD ["/usr/sbin/sshd", "-D"]

# 容器需要开放Hadoop 9000端口
EXPOSE 9000