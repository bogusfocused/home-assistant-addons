ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache jq nodejs nodejs-npm \ 
	&& npm config set unsafe-perm true \
	&& npm install -g smartthings-mqtt-bridge \
	&& npm config set unsafe-perm false

# Copy data
COPY data/run.sh /
RUN chmod a+x /run.sh
COPY data/config.yml /

CMD [ "/run.sh" ]