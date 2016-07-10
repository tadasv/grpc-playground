FROM golang:1.6.2
MAINTAINER Tadas Vilkeliskis <vilkeliskis.t@gmail.com>

RUN apt-get update
RUN apt-get install -y autoconf automake libtool curl make g++ unzip && cd /tmp && curl "https://codeload.github.com/google/protobuf/tar.gz/v3.0.0-beta-3.3" > /tmp/protobuf-3.0.0-beta.3.3.tar.gz && tar zxf /tmp/protobuf-3.0.0-beta.3.3.tar.gz && cd protobuf-3.0.0-beta-3.3 && ./autogen.sh && ./configure && make && make check && make install && ldconfig
RUN go get -a google.golang.org/grpc
RUN go get -a github.com/golang/protobuf/protoc-gen-go
