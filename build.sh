#!/usr/bin/env bash

. ./ci-scripts/build-functions.sh

VERSION=$(cat VERSION)

print_info "build linux binary ..."
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -v -ldflags '-extldflags "-static" -w -s -X main.Version='${VERSION} -o ./bin/linux/ralph-file-server file-server.go
assert_exit_code "linux binary not compiled!"
assert_file_exists "./bin/linux/ralph-file-server"

print_info "build darwin binary ..."
CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build -a -v -ldflags '-extldflags "-static" -w -s -X main.Version='${VERSION} -o ./bin/darwin/ralph-file-server file-server.go
assert_exit_code "darwin binary not compiled!"
assert_file_exists "./bin/darwin/ralph-file-server"

print_info "build windows binary ..."
CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -a -v -ldflags '-extldflags "-static" -w -s -X main.Version='${VERSION} -o ./bin/windows/ralph-file-server.exe file-server.go
assert_exit_code "windows binary not compiled!"
assert_file_exists "./bin/windows/ralph-file-server.exe"
