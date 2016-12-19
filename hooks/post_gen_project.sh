#!/bin/sh

set -e

git init
sh scripts/bootstrap
git add -A .
git commit -m "Initial Commit"
