FROM alpine:latest
ENV REP="https://github.com/bitcoin/bitcoin.git"
ENV TAG="v22.0"
ADD install.sh /
RUN apk add --no-cache alpine-sdk git gcc autoconf automake boost boost-dev libevent libevent-dev libtool && \
  ./install.sh && apk del alpine-sdk git gcc autoconf automake boost-dev libevent-dev libtool
ADD entrypoint.sh /
CMD [ "./entrypoint.sh" ]