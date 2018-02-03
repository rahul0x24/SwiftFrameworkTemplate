#!/bin/sh

set -e
mv _gitignore .gitignore
git init
sh scripts/bootstrap
git add -A .
git commit -m "Initial Commit"
