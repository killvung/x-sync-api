FROM golang:1.14.9-alpine

COPY sync-api.herokuapp.com /sync-api.herokuapp.com

WORKDIR /sync-api.herokuapp.com

RUN go build

ENV PORT 8080
EXPOSE 8080
CMD ["./sync-api.herokuapp.com"]
