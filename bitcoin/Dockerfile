FROM alpine:latest
ADD install.sh /
ARG REP=https://github.com/bitcoin/bitcoin.git
ARG TAG=v22.0
RUN apk add --no-cache alpine-sdk git gcc autoconf automake boost boost-dev libevent libevent-dev libtool && \
  ./install.sh && apk del alpine-sdk git gcc autoconf automake boost-dev libevent-dev libtool
ADD entrypoint.sh /
CMD [ "./entrypoint.sh" ]