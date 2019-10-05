FROM redmine:alpine

RUN apk add --no-cache build-base imagemagick

HEALTHCHECK CMD --interval=60s --timeout=5s CMD printf "GET / HTTP/1.1\n\n" > /dev/tcp/127.0.0.1/3000
