FROM docker:20.10.6

RUN apk add --update --no-cache make ca-certificates openssl python3 curl which bash \
            && update-ca-certificates \
            && ln -sf python3 /usr/bin/python \
            && curl -sSL https://sdk.cloud.google.com | bash
            
ENV PATH $PATH:/root/google-cloud-sdk/bin
