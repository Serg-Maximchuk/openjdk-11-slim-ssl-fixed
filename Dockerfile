FROM openjdk:11.0.1-jdk-slim
MAINTAINER Serhii Maksymchuk <serg.maximchuk@gmail.com>

# these two commands required for ssl handshake, info:
# https://github.com/docker-library/openjdk/issues/19
# https://git.mikael.io/mikaelhg/broken-docker-jdk9-cacerts
RUN /usr/bin/printf '\xfe\xed\xfe\xed\x00\x00\x00\x02\x00\x00\x00\x00\xe2\x68\x6e\x45\xfb\x43\xdf\xa4\xd9\x92\xdd\x41\xce\xb6\xb2\x1c\x63\x30\xd7\x92' > /etc/ssl/certs/java/cacerts
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
