# CentOS with JDK 8
# Author        qiwei

# build a new image with basic  centos
FROM centos-hadoop
# who is the author
MAINTAINER qiwei


# copy the hadoop  archive to the image,and it will automaticlly unzip the tar file
ADD spark-2.2.0-bin-hadoop2.7.tgz /usr/local/
# make a symbol link
RUN ln -s /usr/local/spark-2.2.0-bin-hadoop2.7 /usr/local/spark

COPY hadoop.sh /etc/hadoop.sh
CMD ["/usr/sbin/sshd", "-D"]
