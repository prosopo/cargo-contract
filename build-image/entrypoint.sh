#! /bin/bash

set -e # exit on error
set -u # exit on undefined variable
set -o pipefail # exit if any command in a pipe fails
set -x # print commands

# symlink the git and registry from cargo dir to the cache dir
ln -sf $CARGO_CACHE/registry $CARGO_HOME/registry
ln -sf $CARGO_CACHE/git $CARGO_HOME/git

# run cargo contract with supplied args
echo "Running cargo contract..."
cargo "$@"
