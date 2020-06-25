#!/usr/bin/env bash

set -e

rm -rf dist

echo "linking local packages (non-lerna)"
# we run this outside of lerna, since lerna seems to have issues with correctly linking to the dist
rm -f node_modules/@rocketsoftware/charts
ln -sf $(pwd)/../core/dist node_modules/@rocketsoftware/charts

echo "compile with angular cli"
ng build
