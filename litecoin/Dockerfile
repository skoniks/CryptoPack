FROM alpine:latest
ADD install.sh /
RUN ./install.sh
ADD backup.sh /
ADD entrypoint.sh /
EXPOSE 9333 9332
VOLUME [ "/root/wallets" ]
VOLUME [ "/root/backups" ]
VOLUME [ "/var/blockchain" ]
ENTRYPOINT [ "./entrypoint.sh" ]