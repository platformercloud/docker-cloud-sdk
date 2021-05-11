FROM alpine:3.13

RUN apk add --update --no-cache make ca-certificates openssl python3 curl which bash docker-cli && update-ca-certificates && ln -sf python3 /usr/bin/python 
    
RUN curl -sSL https://sdk.cloud.google.com | bash
    
ENV PATH $PATH:/root/google-cloud-sdk/bin
