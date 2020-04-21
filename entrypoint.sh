#!/bin/sh
set -e

echo bar > foo.html

exec "$@"