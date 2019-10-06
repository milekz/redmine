FROM redmine:alpine

RUN apk add --no-cache build-base imagemagick

HEALTHCHECK CMD --interval=60s --timeout=5s printf "GET / HTTP/1.1\n\n" > /dev/tcp/127.0.0.1/3000 || exit 1
