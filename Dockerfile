FROM ubuntu:20.04
LABEL maintainer="okbro88@gmail.com"
RUN apt-get update
CMD ["echo", "Halo dari container ..."]