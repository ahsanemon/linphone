FROM ubuntu:16.04 
 
RUN apt update && \
    apt -y install \
           sip-tester \
           software-properties-common \
           python-software-properties && \
    rm -rf /var/lib/apt/lists/*

RUN add-apt-repository ppa:linphone/release && \
    apt update && \
    apt -y install linphone && \
    rm -rf /var/lib/apt/lists/*

# Instant Messging SIPp Scripts
COPY uac_im.xml /
COPY uas_im.xml /

# Simple call flow SIPp Scripts
COPY uac_invite.xml
COPY uas_invite.xml
