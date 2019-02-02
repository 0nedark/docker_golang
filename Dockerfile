FROM golang:1.11-alpine3.8

LABEL maintainer=dovydas.rupsys@cryptohaven.com

# Add support libraries
RUN apk add --no-cache --virtual .deps git \
  && go get github.com/cespare/reflex \
  && apk del .deps \
  && rm -fr /go/src

# Setup entrypoint
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT /entrypoint.sh
