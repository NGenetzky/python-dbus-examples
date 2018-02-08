FROM alpine
RUN apk add --no-cache \
    dbus
COPY ./entrypoint.sh /entrypoint.sh
VOLUME /var/run/dbus/
ENTRYPOINT ["/entrypoint.sh"]
CMD ["start"]
