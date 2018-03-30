FROM ubuntu:16.04

EXPOSE 8118

RUN apt-get update

RUN apt-get install sudo

RUN apt-get install --yes curl apt-utils
RUN curl --silent --location https://deb.nodesource.com/setup_9.x | sudo bash -
RUN apt-get install --yes nodejs
RUN apt-get install --yes build-essential

RUN sudo apt-get install --yes build-essential curl git m4 ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev

RUN git clone https://github.com/uxxSam/trudesk.git
RUN cd trudesk && npm install -g yarn grunt && yarn && npm run build

WORKDIR /trudesk






