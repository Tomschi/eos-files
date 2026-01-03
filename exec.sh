#!/usr/bin/env bash

# Get the directory where this script is located
EOS_FILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# yabsnap
if [ ! -d "/etc/yabsnap/configs" ]; then
  sudo mkdir -p /etc/yabsnap/configs
fi

sudo cp $EOS_FILES_DIR/etc/yabsnap/configs/* /etc/yabsnap/configs/.

# pacman
if [ ! -d "/etc/pacman.d/hooks" ]; then
  sudo mkdir -p /etc/pacman.d/hooks
fi

sudo cp $EOS_FILES_DIR/etc/pacman.d/hooks/* /etc/pacman.d/hooks/.

# podman
sudo cp $EOS_FILES_DIR/etc/containers/registries.conf.d/* /etc/containers/registries.conf.d/.
sudo cp $EOS_FILES_DIR/etc/containers/storage.conf /etc/containers/.

