# Dockerfile
FROM golang:1.23.1

# Set the working directory
WORKDIR /app

# Copy the source code to the container
COPY hello .

# Build the Go application
RUN go build -o main .

# Specify the command to run your Go application
CMD ["./main"]