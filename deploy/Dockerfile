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

# Copy the binaries and config for keter
COPY keter /opt/keter/bin/
COPY keter-config.yaml /opt/keter/etc/
# TODO: Provide a "./etc/certificate.pem" file.

# Setup keter service
COPY keter-run /etc/service/keter/run

COPY fitd-web /opt/keter/incoming/

# Allow http(s) access
EXPOSE 80 443

RUN mkdir /opt/keter/log

# This madness is because of how docker is currently
# implemented. I guess it's essentially a bug.
# See: https://github.com/docker/docker/pull/6909
# CMD /sbin/my_init
# ENTRYPOINT []
# ENTRYPOINT ["/etc/service/keter/run"]
ENTRYPOINT exec /opt/keter/bin/keter /opt/keter/etc/keter-config.yaml
