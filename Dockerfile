FROM golang:alpine

WORKDIR /app
COPY . .

RUN go build -o drone-plugin-v1 .

ENTRYPOINT ["./drone-plugin-v1"]