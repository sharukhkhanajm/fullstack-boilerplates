FROM golang:1.22-alpine AS base

# Install dependencies required for the build
RUN apk add --no-cache git

# Create another stage called "dev" that is based off of our "base" stage (so we have golang available to us)
# Development stage
FROM base AS dev

# Set the Current Working Directory inside the container
WORKDIR /app

# Install air for live reload
RUN go install github.com/air-verse/air@latest

CMD ["air", "-c", ".air.toml"]

# Production stage
FROM base AS prod

# Set the Current Working Directory inside the container
WORKDIR /app

# # Copy go mod and sum files
COPY go.mod go.sum ./

# Download all dependencies. Dependencies will be cached if the go.mod and go.sum files are not changed
RUN go mod download && go mod verify

# Copy the source from the current directory to the Working Directory inside the container
COPY . .

# Build the Go app
RUN CGO_ENABLED=0 go build -o /app/main .

# Create a non-root user and switch to it
RUN adduser -D -g '' appuser
USER appuser

ENTRYPOINT ["./tmp/main"]