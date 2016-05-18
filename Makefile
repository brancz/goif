compile:
	CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .
build-docker:
	docker build -t flowerpot/goif .
release-docker: build-docker
	docker push flowerpot/goif
