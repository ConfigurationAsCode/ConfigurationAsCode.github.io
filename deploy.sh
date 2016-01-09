#!/bin/bash

set -o errexit -o nounset

rev=$(git rev-parse --short HEAD)

cd stage/_book

git init
git config user.name "Thomas William"
git config user.email "thomas.william@citrix.com"

git remote add upstream "https://$GH_TOKEN@github.com/ConfigurationAsCode/ConfigurationAsCode.github.io.git
git fetch upstream
git reset upstream/master

echo "configurationascode.github.io" > CNAME

touch .

git add -A .
git commit -m "rebuild pages at ${rev}"
git push -q upstream HEAD:master

