ARG BUILD_VERSION
FROM docker.io/library/nginx:$BUILD_VERSION
COPY rootfs /
RUN sed -i "s#/docker-entrypoint.d/#\${INIT_DIR}/#g" /docker-entrypoint.sh && \
    sed -i '4r /defaults/docker-entrypoint-mod' /docker-entrypoint.sh
LABEL maintainer="hulkhaugen (https://github.com/hulkhaugen)"
