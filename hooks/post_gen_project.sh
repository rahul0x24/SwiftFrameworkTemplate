#!/bin/sh

set -e

sh scripts/bootstrap
pod lib lint {{ cookiecutter.name }}/{{ cookiecutter.name }}.podspec
