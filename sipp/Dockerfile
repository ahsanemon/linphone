FROM ubuntu:16.04 
 
RUN apt-get update && \
    apt-get -y install \
            nano \
            sip-tester \
            software-properties-common \
            python-software-properties && \
    rm -rf /var/lib/apt/lists/*

RUN add-apt-repository ppa:linphone/release && \
    apt-get update && \
    apt-get -y install linphone && \
    rm -rf /var/lib/apt/lists/*

# Copy SIPp Scripts and sample sound pcaps
COPY scripts/ /
COPY pcap/ /
