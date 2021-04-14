FROM golang:1.14.9-alpine AS builder

RUN mkdir /build

COPY x-sync-api.herokuapp.com /build

WORKDIR /build

RUN go build

FROM alpine

RUN adduser -S -D -H -h /app appuser
USER appuser

COPY --from=builder build /app

WORKDIR /app

ENV PORT 8080
EXPOSE 8080
CMD ["./x-sync-api.herokuapp.com"]
