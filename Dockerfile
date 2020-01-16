FROM alpine:3
ENV LANG=C.UTF-8
RUN apk update && apk upgrade
RUN apk add bash git cmake make gcc g++ boost-dev zlib-dev bzip2-dev xz-dev eigen-dev
WORKDIR /work
RUN git clone https://github.com/veer66/mosesdecoder.git
WORKDIR /work/mosesdecoder
RUN ./bjam -j8
