FROM debian:10
ENV LANG=C.UTF-8
WORKDIR /
RUN apt update && \
	apt upgrade -y && \
	apt install -y g++ gcc make git libboost-all-dev zlib1g-dev libbz2-dev liblzma-dev
RUN git clone --depth 1 https://github.com/veer66/mosesdecoder.git
WORKDIR /mosesdecoder
RUN ./bjam -j8
