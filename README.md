<h1 align='center'> Docker SingleApp </h1>
<h3 align="center">A docker container made to run a single gui application over vnc</h3>

## Usage

### Using an existing image:
Firefox example
```
docker run --rm -d  -p 5901:5901/tcp outboundspade48/docker-singleapp:firefox
```
### Building your own:

Pull the base image with:
```
docker pull outboundspade48/docker-singleapp:base
```
Create a Dockerfile that looks like this:
```
FROM outboundspade48/docker-singleapp:base
USER root
RUN <command to install your app>
RUN echo "exec <command to start your app>" >> ~/start
USER user
```
>NOTE: make sure to add ` && tail -f /dev/null` to the end of your start command if your app runs in the background
---
Visit the Docker Hub page for more information: https://hub.docker.com/r/outboundspade48/docker-singleapp
