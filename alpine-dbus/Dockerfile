FROM alpine
RUN apk add --no-cache \
    dbus
COPY ./entrypoint.sh /entrypoint.sh
VOLUME /run/dbus/system_bus_socket
ENTRYPOINT ["/entrypoint.sh"]
