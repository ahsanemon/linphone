FROM ubuntu:16.04

# Installing dependencies of SIPp
RUN apt-get update && \
    apt-get install -y make \
                    g++ \
                    libncurses5-dev \
                    libssl-dev \
                    openssl \
                    libnet1-dev \
                    libpcap0.8-dev \
                    libsctp-dev \
                    wget && \
    rm -rf /var/lib/apt/lists/*

# Downloading and compiling the source code of SIPp
RUN wget https://sourceforge.net/projects/sipp/files/sipp/3.4/sipp-3.3.990.tar.gz/download && \
    tar -xvzf download && \
    cd sipp-3.3.990 && \
    ./configure --with-sctp --with-pcap --with-openssl && \
    make
# Installing dependencies of LinPhone   
RUN apt-get update && \
    apt-get -y install \
            nano \
            sip-tester \
            software-properties-common \
            python-software-properties && \
    rm -rf /var/lib/apt/lists/*

# Installing LinPhone
RUN add-apt-repository ppa:linphone/release && \
    apt-get update && \
    apt-get -y install linphone && \
    rm -rf /var/lib/apt/lists/*
    
# Copy SIPp Scripts and sample sound pcaps
RUN mkdir scripts && mkdir pcap
COPY scripts/ /scripts/
COPY pcap/ /pcap/
