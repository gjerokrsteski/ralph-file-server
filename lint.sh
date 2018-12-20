#!/usr/bin/env sh
set -e
go vet -all -v file-server.go
