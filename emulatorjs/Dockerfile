ARG BUILD_FROM
FROM $BUILD_FROM
COPY rootfs /
RUN find /etc/s6-overlay/s6-rc.d/ -name run -type f -exec chmod 755 {} \;
LABEL maintainer="hulkhaugen (https://github.com/hulkhaugen)"