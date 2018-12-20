#!/bin/sh
set -e

if [ ! -f ./pidfile ]
then
  echo "File pidfile does not exist!"
  exit 1
fi

kill -15 $(cat ./pidfile)

