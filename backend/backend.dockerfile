FROM golang:1.22-alpine as base

# Create another stage called "dev" that is based off of our "base" stage (so we have golang available to us)
FROM base as dev

RUN go install github.com/air-verse/air@latest

WORKDIR /app

ENTRYPOINT ["air"]