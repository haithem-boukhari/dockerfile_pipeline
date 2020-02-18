FROM centos:centos8
RUN yum -y install java-1.8.0-openjdk-devel
RUN yum -y install git
RUN yum -y install maven

