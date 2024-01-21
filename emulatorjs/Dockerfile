ARG BUILD_FROM
FROM $BUILD_FROM
COPY rootfs /
RUN rm -rf /data \
    && mkdir -p /config/data \
    && ln -s /config/data/ /data
LABEL maintainer="hulkhaugen (https://github.com/hulkhaugen)"