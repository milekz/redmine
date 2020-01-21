FROM redmine:4.1-alpine

RUN apk add --no-cache build-base imagemagick

HEALTHCHECK CMD netstat -tulpn | grep -q 3000 || exit 1
