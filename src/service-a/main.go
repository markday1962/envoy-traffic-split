package main

import (
    "log"
    "net/http"
)

func main() {
    http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
        w.Write([]byte("<h1>Welcome to service A!</h1>"))
    })
    log.Fatal(http.ListenAndServe(":8080", nil))
}
