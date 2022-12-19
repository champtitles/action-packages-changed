
#!/bin/bash

set -e
packages=($(npx lerna changed --all))
PRIVATE="(PRIVATE)"
echo "${packages[@]}" | tr ' ' '\n' | sed -e "s/$PRIVATE$//" | xargs | tr '\n' ' ' | tr ' ' '\n'
