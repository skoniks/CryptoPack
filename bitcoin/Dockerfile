FROM alpine:latest
ADD install.sh /
RUN ./install.sh
ADD entrypoint.sh /
EXPOSE 8333 8332
VOLUME [ "/root/wallets" ]
VOLUME [ "/var/blockchain" ]
ENTRYPOINT [ "./entrypoint.sh" ]