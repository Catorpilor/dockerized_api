FROM golang:latest

MAINTAINER Catorpilor

RUN git clone --verbose  https://github.com/Catorpilor/dockerized_api.git api

WORKDIR api 

RUN go get github.com/gin-gonic/gin

RUN go build main.go

ENTRYPOINT ./main

EXPOSE 8050
