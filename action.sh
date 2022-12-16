
#!/bin/bash

set -e
packages=($(npx lerna run deploy --since HEAD~1))
suffix=":deploy"
package=${string#"$suffix"}
echo "${packages[@]}" | tr ' ' '\n' | grep ".*:deploy" | sed -e "s/$suffix$//"