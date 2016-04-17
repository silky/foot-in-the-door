FROM        fpco/stack-run:lts-5
MAINTAINER  Noon Silk <noonsilk+fitd@gmail.com>

# Reference:
#   - https://github.com/phusion/baseimage-docker#getting-started
#
# Docker image specification for *running* the Internet High 5 website.
#
# We are going to do this using keter.

# According to:
#
# Update once, get some tools
RUN apt-get update && apt-get -y install postgresql

RUN mkdir -p /opt/ws/

COPY /home/noon/dev/foot-in-the-door/dist/bin/fitd-web /opt/ws/
COPY static /opt/ws/static
COPY config /opt/ws/config
COPY config/live-settings.yml /opt/ws/config/settings.yml

# Allow http(s) access
EXPOSE 80 443
WORKDIR /opt/ws
ENTRYPOINT  /opt/ws/fitd-web
