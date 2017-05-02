# Main Image
FROM alpine:3.4
MAINTAINER Jan Sanchez <joejansanchez@gmail.com>

RUN apk update \
    && apk add sqlite \
    && apk add socat

ENTRYPOINT ["sqlite3"]
# This image of Alpine Linux don't contain bash
# use sh, ash, /bin/sh or /bin/ash instead
# i.e.: docker run -it --rm image_name /bin/sh
