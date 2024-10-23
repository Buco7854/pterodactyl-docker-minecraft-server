#!/bin/sh

set -e

if id ubuntu > /dev/null 2>&1; then
  deluser ubuntu
fi

addgroup --gid 988 container
adduser --system --shell /bin/false --uid 988 --ingroup container --home /home/container container