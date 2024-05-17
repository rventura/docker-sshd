# docker-sshd

## Description

This is a simple Ubuntu-based container to serve as a sshd server for
a given user/UID on a given (mounted) folder.

## Usage

1. build the image using `docker build -t <image name> .`
2. run a container using, e.g.,  `docker run --rm --name <container name> -v <mount point>:/file -p <port>:22 -e USER=<username> -e PASS=<password> -e UID=<UID> -e GID=<GID> <image name>`
3. access sshd using `ssh -p <port> <usename>@<hostname>`

## Author

Rodrigo Ventura
Institute for Systems and Robotics
Instituto Superior Tecnico
University of Lisbon
rodrigo.ventura AT isr DOT tecnico DOT ulisboa DOT pt
