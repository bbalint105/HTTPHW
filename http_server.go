package main

import (
	"fmt"
	"io"
	"net/http"
)

func getRoot(w http.ResponseWriter, r *http.Request) {
	io.WriteString(w, "Hello, World!\n")
}

func main() {
	http.HandleFunc("/", getRoot)

	fmt.Printf("Listening on port 80...")
	http.ListenAndServe(":80", nil)
}
