## Overview

This repository is a **fork** of the [itzg/docker-minecraft-server](https://github.com/itzg/docker-minecraft-server), specifically adapted for **Pterodactyl**. You can view the available images [here](https://hub.docker.com/repository/docker/buco7854/pterodactyl-minecraft-server/tags). This image primarily ensures compatibility with Pterodactyl. For any non-Pterodactyl-related questions, please refer to the official [documentation](https://docker-minecraft-server.readthedocs.io/en/latest/).

### Startup Command Example
You can set environment variables in Pterodactyl variables or directly in the **Startup Command** field. Here's an example of how to configure it in one line:
```bash
export EULA="TRUE" TYPE="FORGE" TZ="Europe/Paris" MEMORY="4G" SERVER_PORT="25565" QUERY_PORT="25565" ENABLE_QUERY="true" VIEW_DISTANCE=10 MOTD="My Minecraft Server Powered by Docker" VERSION="1.12.2" FORGE_VERSION="14.23.5.2859" REMOVE_OLD_MODS="false" SPAWN_ANIMALS="false" SPAWN_MONSTERS="false" SPAWN_NPCS="false" ENABLE_COMMAND_BLOCK="true" RCON_CMDS_STARTUP=$'whitelist add User1\nwhitelist add user2\nop User1\nop User2\ngamerule doFireTick false' RCON_CMDS_LAST_DISCONNECT=$'gamerule doFireTick false\nweather clear\ngamerule doDaylightCycle false\ngamerule doWeatherCycle false\ndifficulty peaceful' && /start
```

### Pterodactyl User Permissions
Pterodactyl always runs the image using the **UID 988** user (changing the UID or GID will not have any impact since Pterodactyl forces the container to use UID:GID 988), referred to as `container` in the image.

### Running Outside of Pterodactyl
If you wish to run this image outside of Pterodactyl, it’s recommended to use the original [itzg/docker-minecraft-server](https://github.com/itzg/docker-minecraft-server). However, if you decide to use this fork, you **must mount your data into `/home/container`**, as this is required for Pterodactyl compatibility.

### Disclaimer
There may be some issues with the image, as I am not familiar with dealing with Dockerfiles, especially for a complex image like this.