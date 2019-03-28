FROM golang:1.12-alpine3.9

LABEL maintainer=dovydas.rupsys@cryptohaven.com

# Add support libraries
RUN apk add --no-cache git \
  && go get github.com/cespare/reflex \
  && rm -fr /go/src

# Setup entrypoint
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT /entrypoint.sh
