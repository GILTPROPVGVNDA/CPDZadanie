# Dockerfile for Apache2

# Base Ubuntu image
FROM ubuntu:latest
MAINTAINER BARTOSZ PRYSAK
# Update, Apache2 installation and cleaning

RUN apt-get update && apt-get install -y apache2 && apt-get clean

# Logs file directory
ENV APACHE_LOG_DIR /var/log/apache2

# Running Apache2 as entry point in the foreground
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
