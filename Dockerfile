FROM golang:1.20

WORKDIR /go/src

COPY go.mod .

COPY go.sum .

RUN go mod download

COPY . .

RUN go build

# EXPOSE 8090

CMD ["./trx"]
