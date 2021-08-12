# TCP Proxy - Docker
Simple TCP Proxy in a Docker Container using [HAproxy](http://www.haproxy.org/)

Using the official alpine based HAProxy image with a small configuration file.

## Usage

### Setup

You need to set two required env vars to run this container. See the Dockerfile for optional ones, such as timeouts, etc.

- `HOST`
  - IP or hostname to proxy connections to
- `PORT`
  - The port number to proxy connections to. This is also the port the container listens on.

### Building the Container

```
docker build -t tcp-proxy .
```

### Running the Container

The following example forwards TCP requests on port `3306` to the MySQL server `db.domain.com`.

```
docker run -it -p 3306:3306 --rm -e "HOST=db.domain.com" -e "PORT=3306" tcp-proxy
```

### docker-compose

```
version: '3.5'
services:
  tcp-proxy:
    image: ghcr.io/jimcronqvist/tcp-proxy:master
    container_name: tcp-proxy
    restart: unless-stopped
    environment:
      - HOST=db.domain.com
      - PORT=3306
```
