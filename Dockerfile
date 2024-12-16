FROM golang:1.23.4

WORKDIR /app
COPY go.mod ./
#COPY go.sum ./
RUN go mod download

COPY *.go ./
RUN CGO_ENABLED=0 GOOS=linux go build -o /docker-gs-ping

EXPOSE 8088

CMD ["/docker-gs-ping"]