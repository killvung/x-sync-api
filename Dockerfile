FROM golang:1.14.9-alpine

COPY x-sync-api.herokuapp.com /x-sync-api.herokuapp.com

WORKDIR /x-sync-api.herokuapp.com

RUN go build

ENV PORT 8080
EXPOSE 8080
CMD ["./x-sync-api.herokuapp.com"]
