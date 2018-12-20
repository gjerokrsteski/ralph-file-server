# Ralph - RESTful HTTP File Server [![Build Status](https://travis-ci.org/gjerokrsteski/ralph-file-server.svg?branch=master)](https://travis-ci.org/gjerokrsteski/ralph-file-server) [![Go Report Card](https://goreportcard.com/badge/github.com/gjerokrsteski/ralph-file-server)](https://goreportcard.com/report/github.com/gjerokrsteski/ralph-file-server)

Ralph is a lightweight RESTful HTTP file-server, that serves HTTP requests with the contents of the file.

## Use Cases
- Developers who need a quick back-end for prototyping and mocking.
- If you have dependencies to remote services like an API, 
than Gin file-server will help you out to start local file-server in order to be 
able to simulate the undone API.
- Simple if you want to list a files from specific directory.

## Download

Ralph is compiled for amd64 architecture and supports following operating systems: window, darwin (mac) and linux.
[Ddownload latest release](https://github.com/gjerokrsteski/ralph-file-server/tags)

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

