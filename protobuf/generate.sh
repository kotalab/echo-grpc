#!/bin/bash

protoc \
./protobuf/echo/echo.proto \
-I . \
-I $GOPATH/src \
-I $GOPATH/src/github.com/grpc-ecosystem/grpc-gateway \
-I $GOPATH/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
--go_out=plugins=grpc:./server/src/api \
--grpc-gateway_out=logtostderr=true:./server/src/api

cp -r ./server/src/api/protobuf/echo ./server/src/api
rm -r server/src/api/protobuf