FROM dockerfile/go-runtime
COPY . /gopath/src/github.com/flower-pot/go-if
RUN cd /gopath/src/github.com/flower-pot/go-if; go get; go install
CMD ["/gopath/bin/go-if"]
