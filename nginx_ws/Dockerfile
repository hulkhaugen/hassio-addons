ARG BUILD_FROM
FROM $BUILD_FROM
ARG BUILD_VERSION
RUN \
  apk add --no-cache \
    nginx=$BUILD_VERSION
COPY rootfs /
COPY run.sh /
RUN chmod a+x /run.sh
CMD [ "/run.sh" ]
LABEL maintainer="hulkhaugen (https://github.com/hulkhaugen)"