#!/usr/bin/env bash

set -e;

ng build --prod

git add .
git add -A
git commit -am "built"
git push

git subtree push --prefix dist/fb-wars gh-pages master
