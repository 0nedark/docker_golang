FROM golang:1.10.3-alpine3.8

LABEL maintainer=dovydas.rupsys@cryptohaven.com

# Add support libraries
RUN apk add --update curl git && rm -rf /var/cache/apk/*
RUN curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh
RUN go get github.com/cespare/reflex
RUN go get github.com/0nedark/shape

# Setup entrypoint
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT /entrypoint.sh
