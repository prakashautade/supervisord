FROM ubuntu:16.04
MAINTAINER Prakash Autade "https://github.com/prakashautade"
ENV HOME /root

# make sure the package repository is up to date and update ubuntu
RUN apt-get update && \
    apt-get -y upgrade

# install supervisor and other utility packages
RUN apt-get install -y curl git htop man software-properties-common unzip vim wget supervisor

# create directory for child images to store configuration in
RUN mkdir -p /var/log/supervisor /etc/supervisor/conf.d

# supervisor base configuration
ADD supervisord.conf /etc/supervisord.conf

# default command
CMD ["supervisord", "-c", "/etc/supervisord.conf"]
