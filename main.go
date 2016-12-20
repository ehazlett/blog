package main

import (
	"flag"
	"net/http"
)

var (
	listenAddr string
	publicDir  string
)

func init() {
	flag.StringVar(&listenAddr, "l", ":8080", "Listen address")
	flag.StringVar(&publicDir, "p", "./content/public", "Content directory")

}

func main() {
	flag.Parse()
	panic(http.ListenAndServe(listenAddr, http.FileServer(http.Dir(publicDir))))

}
