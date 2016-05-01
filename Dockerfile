FROM golang:alpine
RUN apk --update add make
COPY . /usr/src/app
WORKDIR /usr/src/app

RUN make compile

EXPOSE 8080
CMD ["/usr/src/app/main"]
