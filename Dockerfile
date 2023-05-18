from centos:centos7

RUN yum -y install tmux && yum -y clean all  && rm -rf /var/cache