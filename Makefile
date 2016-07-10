projectMountPoint := /go/src/github.com/tadasv/grpc-playground

start:
	docker run --name grpc-playground -ti -d -v $(PWD):$(projectMountPoint) -w $(projectMountPoint) tadasv/golang:1.6.2-grpc bash

shell:
	docker exec -ti grpc-playground bash
