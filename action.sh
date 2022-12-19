#!/bin/bash

set -e
packages=($(npx lerna changed --all))
PRIVATE="(PRIVATE)"
echo "PACKAGES_CHANGED=${packages[@]}" | tr ' ' '\n' | sed -e "s/$PRIVATE$//" | xargs
