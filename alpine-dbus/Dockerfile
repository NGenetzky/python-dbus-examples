FROM alpine
RUN apk add --no-cache \
    dbus

COPY ./system.d/* /usr/share/dbus-1/system.d/
COPY ./entrypoint.sh /entrypoint.sh

VOLUME /var/run/dbus/
ENTRYPOINT ["/entrypoint.sh"]
CMD ["start"]
