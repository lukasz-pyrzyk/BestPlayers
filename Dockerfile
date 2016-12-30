FROM golang:alpine

MAINTAINER Lukasz Pyrzyk <lukasz.pyrzyk@gmail.com>

ADD . /go/src/github.com/lukasz-pyrzyk/TankInDungeonApi

RUN go get github.com/ant0ine/go-json-rest/rest
RUN go get gopkg.in/mgo.v2

RUN go install github.com/lukasz-pyrzyk/TankInDungeonApi/api

ENTRYPOINT ["/go/bin/api"]

EXPOSE 8080
