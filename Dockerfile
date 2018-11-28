FROM alpine:3.8

RUN apk add --no-cache tftp-hpa
VOLUME /tftpboot
EXPOSE 69/udp

RUN mkdir -p /tftpboot && chmod -R 777 /tftpboot

ENTRYPOINT ["in.tftpd"]
CMD ["-c", "-l", "--secure", "/tftpboot"]
