#!/bin/sh

set -e

case "$1" in
    *.yaml|*.yml) set -- registry serve "$@" ;;
    serve|garbage-collect|help|-*) set -- registry "$@" ;;
esac

#exec "$@"
while true;do
   $@ 2>&1 |tee -a /log
   sleep 1
done
