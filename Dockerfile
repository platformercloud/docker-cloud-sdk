FROM alpine:3.13

RUN apk add --update --no-cache make ca-certificates openssl python3 curl which bash docker openrc && update-ca-certificates && ln -sf python3 /usr/bin/python && rc-update add docker boot
    
RUN curl -sSL https://sdk.cloud.google.com | bash
    
ENV PATH $PATH:/root/google-cloud-sdk/bin
