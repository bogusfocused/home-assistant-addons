ARG BUILD_FROM
FROM $BUILD_FROM

# Setup base
RUN apk add --no-cache nginx openssl --repository=http://dl-cdn.alpinelinux.org/alpine/edge/main

# Copy data
COPY data/run.sh /
RUN chmod a+x /run.sh


CMD [ "/run.sh" ]
