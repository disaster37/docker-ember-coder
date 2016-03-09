FROM quay.io/webcenter/ember-builder
MAINTAINER Sebastien Langoureaux <linuxworkgroup@hotmail.com>

USER root

# Install shell
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install xfce4-terminal -y && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

USER dev

CMD xfce4-terminal --command '/bin/bash' --title 'Ember shell'
