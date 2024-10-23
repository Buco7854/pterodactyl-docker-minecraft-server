#!/bin/sh

set -e

addgroup -g 988 container
adduser -Ss /bin/false -u 988 -G container -h /home/container container
