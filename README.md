# echo-grpc
echo-grpc is samples for an API server that uses gPRC in the echo framework.

## How to build protobuf
```shell
docker build -t proto ./protobuf && \
docker run -it --rm -v $GOPATH/src/github.com/kotalab/echo-grpc/:/proto proto ./protobuf/generate.sh
```