FROM alpine:latest
ADD install.sh /
RUN ./install.sh
ADD entrypoint.sh /
EXPOSE 9333 9332
VOLUME [ "/root/wallets" ]
VOLUME [ "/var/blockchain" ]
ENTRYPOINT [ "./entrypoint.sh" ]