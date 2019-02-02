FROM golang:1.11-alpine3.8

LABEL maintainer=dovydas.rupsys@cryptohaven.com

# Add support libraries
RUN apk add --no-cache --update git gcc libc-dev
RUN go get github.com/cespare/reflex

# Setup entrypoint
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT /entrypoint.sh
