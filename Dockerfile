FROM golang:alpine

WORKDIR /app
COPY . .

RUN go build -o drone-plugin .

ENTRYPOINT ["./drone-plugin"]