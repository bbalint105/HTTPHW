FROM golang:1.21
WORKDIR /app
COPY http_server.go .
EXPOSE 80
CMD ["go run http_server.go"]