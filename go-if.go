package main

import (
	"fmt"
	"log"
	"net"
	"net/http"
	"os"
)

func main() {
	http.HandleFunc("/", handler)
	port := os.Getenv("PORT")

	if port == "" {
		port = "8080"
	}

	socket := fmt.Sprintf("localhost:%v", port)
	log.Println(fmt.Sprintf("Listening on %v...", socket))
	err := http.ListenAndServe(socket, nil)

	if err != nil {
		log.Fatal(err)
	}
}

func handler(w http.ResponseWriter, r *http.Request) {
	host, err := os.Hostname()

	if err != nil {
		fmt.Fprintln(w, err)
	}

	fmt.Fprintln(w, host)
	fmt.Fprintln(w, "")

	addrs, err := net.InterfaceAddrs()

	if err != nil {
		fmt.Fprintln(w, err)
	}

	for _, a := range addrs {
		fmt.Fprintln(w, a)
	}
}
