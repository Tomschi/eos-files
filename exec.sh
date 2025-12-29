#!/usr/bin/env bash

# pacman
sudo cp etc/pacman.d/hooks/* /etc/pacman.d/hooks/.

# podman
sudo cp etc/containers/registries.conf.d/* /etc/containers/registries.conf.d/.
