FROM ubuntu:18.04

MAINTAINER pablo@vigo.cat

RUN apt update && \
    apt -y upgrade && \
    apt -y install debconf-utils gnupg1 sudo bash curl wget && \
    curl -sL http://download-linkat.xtec.cat/linkat-install-docker.sh | sudo -E bash - && \
    apt clean && apt autoclean && DEBIAN_FRONTEND=noninteractive apt-get autoremove -yq

CMD ["/bin/bash"]
