#!/usr/bin/env bash

# pacman
if [ ! -d "/etc/pacman.d/hooks" ]; then
  sudo mkdir -p /etc/pacman.d/hooks
fi

sudo cp etc/pacman.d/hooks/* /etc/pacman.d/hooks/.

# podman
sudo cp etc/containers/registries.conf.d/* /etc/containers/registries.conf.d/.
