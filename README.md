[![Docker Image](http://img.shields.io/badge/Docker-Image-blue.svg)](https://registry.hub.docker.com/u/flowerpot/go-if/)

GO-IF
=====

Simple go webserver, that prints hostname and all network interface ip
adresses.

I use it as a dummy application in cluster deployments, for example when
testing out configuration management or orchestration, so I can see that
HAProxy load balancing is working. The advantage of this is no depencencies
and only one binary/docker-image to deploy.
