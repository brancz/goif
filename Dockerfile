FROM dockerfile/go-runtime
COPY . /gopath/src/github.com/flower-pot/go-if
RUN cd /gopath/src/github.com/flower-pot/go-if; go get; go install
ENV PORT 8080
EXPOSE 8080
CMD ["/gopath/bin/go-if"]
