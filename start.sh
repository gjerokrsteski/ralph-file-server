#!/bin/sh
set -e
((./bin/linux/ralph-file-server -dir=$(pwd)/_fixtures) & echo $! >./pidfile)
