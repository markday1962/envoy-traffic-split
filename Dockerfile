FROM golang:alpine AS build

RUN apk add git

RUN mkdir /src
ADD . /src
WORKDIR /src

RUN go build -o /tmp/http-server ./src/service-a/main.go

FROM alpine:edge

COPY --from=build /tmp/http-server /sbin/http-server

CMD /sbin/http-server
