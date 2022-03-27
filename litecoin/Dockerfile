FROM alpine:latest
ADD install.sh /
ARG REP=https://github.com/litecoin-project/litecoin.git
ARG TAG=v0.18.1
RUN apk add --no-cache alpine-sdk git gcc autoconf automake boost boost-dev libevent libevent-dev libtool libffi-dev openssl-dev && \
  ./install.sh && apk del alpine-sdk git gcc autoconf automake boost-dev libevent-dev libtool libffi-dev openssl-dev
ADD entrypoint.sh /
CMD [ "./entrypoint.sh" ]