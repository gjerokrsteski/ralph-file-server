package main

import (
	"flag"
	"log"
	"net/http"
	"fmt"
	"os"
)

var (
	Version string = "No Version Provided"
)

func main() {
	port      := flag.String("port", "8100", "port to serve on")
	directory := flag.String("dir", ".", "directory of static file to host")
	version   := flag.Bool("version", false, "prints current version")
	flag.Parse()

	if *version {
		fmt.Println("Gin HTTP file-server v"+Version)
		os.Exit(0)
	}

	http.Handle("/", http.StripPrefix("/", http.FileServer(http.Dir(*directory))))
	log.Printf("starting Gin HTTP file-server v%s for directory %s on port: %s\n", Version, *directory, *port)
	log.Fatal(http.ListenAndServe(":"+*port, nil))
}
