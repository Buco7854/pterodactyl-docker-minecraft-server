#!/bin/bash
cd /home/container

# Check if the STARTUP environment variable is set
if [ -z "${STARTUP}" ]; then
    echo "No STARTUP environment variable found. Running /start."
    /start
    exit 0
fi

# Replace {{VAR}} with ${VAR} in the STARTUP command
MODIFIED_STARTUP=$(echo "${STARTUP}" | sed -e 's/{{/${/g' -e 's/}}/}/g')

# Debug: print the command after modification
echo ":/home/container$ ${MODIFIED_STARTUP}"

bash -c "${MODIFIED_STARTUP}"
