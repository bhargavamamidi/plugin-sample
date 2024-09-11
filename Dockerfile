FROM golang:alpine

WORKDIR /app
COPY . .

# Build the Go binary for Linux (optional if running in Linux-based environments)
RUN GOOS=linux GOARCH=amd64 go build -o drone-plugin .

# Ensure the binary is executable
RUN chmod +x drone-plugin

# Correctly specify ENTRYPOINT
ENTRYPOINT ["./drone-plugin"]