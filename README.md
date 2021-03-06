# RESTful HTTP File Server [![Build Status](https://travis-ci.org/gjerokrsteski/ralph-file-server.svg?branch=master)](https://travis-ci.org/gjerokrsteski/ralph-file-server) [![Go Report Card](https://goreportcard.com/badge/github.com/gjerokrsteski/ralph-file-server)](https://goreportcard.com/report/github.com/gjerokrsteski/ralph-file-server)
I wrote this server for my best friend Ralph. It is a lightweight RESTful HTTP file-server, 
that serves HTTP requests with the contents of the file.

## Use Cases
- Simple if you want to list a files from specific directory.
- Developers who need a quick back-end for prototyping and mocking.

## Download
Ralph is compiled for amd64 architecture and supports following operating systems: window, darwin (mac) and linux.
[Download latest release](https://github.com/gjerokrsteski/ralph-file-server/releases)

### 1. Explorer the binary

```
./ralph-file-server -h
```

```
Usage of ./ralph-file-server:
  -dir string
        directory of static file to host (default ".")
  -port string
        port to serve on (default "8100")
  -version
        prints current version

```

### 2. Start the file-server (default port is 8100)

```
./ralph-file-server -port=5454 -dir=/path/to/files/
```


# Development
For developing and contributing you need [Golang 1.9.1](https://golang.org/) installed.

