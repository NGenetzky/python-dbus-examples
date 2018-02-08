#!/bin/sh -x

clean()
{
  rm \
    /var/run/dbus.pid \
    /var/run/dbus/system_bus_socket
}

start()
{
  [[ -f '/var/run/dbus.pid' ]] && clean
  dbus-daemon --system --print-address --nofork
}

monitor()
{
  dbus-monitor --system
}

main()
{
  case $1 in
    clean) clean
      ;;
    start) start
      ;;
    monitor) monitor
      ;;
  esac
}

main $@
