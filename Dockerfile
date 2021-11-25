FROM jenkins/jenkins:jdk11

RUN /usr/local/bin/install-plugins.sh ansicolor
RUN /usr/local/bin/install-plugins.sh greenballs

# Plugin for scaling Jenkins agents
RUN /usr/local/bin/install-plugins.sh kubernetes

USER root

# Add docker to allow master node to build docker pipelines
RUN apt-get update
RUN apt-get install docker -y

USER jenkins
