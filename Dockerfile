FROM golang:1.14.9-alpine

RUN mkdir /build

COPY x-sync-api.herokuapp.com /build

WORKDIR /build

RUN go build

ENV PORT 8080
EXPOSE 8080
CMD ["./x-sync-api.herokuapp.com"]
