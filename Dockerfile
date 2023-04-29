# syntax=docker/dockerfile:1
FROM golang:1.19-alpine

WORKDIR /lykoi

COPY . .

RUN go mod download

RUN go build -o /identity_server

EXPOSE 7001

CMD ["/identity_server"]
