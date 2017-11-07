FROM ubuntu:16.04 
 
RUN apt update && \
    apt -y install \
           software-properties-common \
           python-software-properties && \
    rm -rf /var/lib/apt/lists/*

RUN add-apt-repository ppa:linphone/release && \
    apt update && \
    apt -y install linphone && \
    rm -rf /var/lib/apt/lists/*

#RUN flatpak --user install --from https://linphone.org/flatpak/linphone.flatpakref 
