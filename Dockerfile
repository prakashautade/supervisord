FROM ubuntu:16.04
LABEL maintainer="Prakash Autade" github="https://github.com/prakashautade"
ENV HOME /root

# make sure the package repository is up to date and update ubuntu
RUN apt-get update && \
    apt-get install -y --no-install-recommends curl git htop man software-properties-common unzip vim wget supervisor && \
    rm -rf /var/lib/apt/lists/*

# create directory for child images to store configuration in
RUN mkdir -p /var/log/supervisor /etc/supervisor/conf.d

# supervisor base configuration
ADD supervisord.conf /etc/supervisord.conf

# default command
CMD ["supervisord", "-c", "/etc/supervisord.conf"]
