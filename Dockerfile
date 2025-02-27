FROM golang:1.21
WORKDIR /app
COPY http_server.go .
RUN go build -o http_server http_server.go
EXPOSE 80
CMD ["./http_server"]