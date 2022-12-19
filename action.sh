#!/bin/bash

set -e
packages=($(npx lerna changed --all))
PRIVATE="(PRIVATE)"
changed=$(echo "${packages[@]}" | tr ' ' '\n' | sed -e "s/$PRIVATE$//" | xargs)
packagesarr=($changed)
echo ${packagesarr[@]}
echo "arr length ${#packagesarr[@]}"
export PACKAGES_CHANGED="$(echo "${packages[@]}" | tr ' ' '\n' | sed -e "s/$PRIVATE$//" | xargs)"
