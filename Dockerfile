FROM php:7.3-cli
RUN sudo apt-get update \
         && sudo apt-get -y upgrade \
         && sudo apt-get -y autoremove
USER 1001
