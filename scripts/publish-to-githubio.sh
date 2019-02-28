#!/usr/bin/env bash


ng build --production

git add .
git add -A
git commit -am "built"
git push

git subtree push --prefix dist/fb-wars gh-pages master
