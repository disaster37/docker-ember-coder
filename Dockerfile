FROM quay.io/webcenter/ember-builder
MAINTAINER Sebastien Langoureaux <linuxworkgroup@hotmail.com>


# Install shell
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install xfce4-terminal -y && \
    update-locale LANG=C.UTF-8 LC_MESSAGES=POSIX && \
    locale-gen en_US.UTF-8 && \
    dpkg-reconfigure locales && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*



CMD xfce4-terminal --command '/bin/bash' --title 'Ember shell'
