#!/usr/bin/env bash

set -e

CWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

GIT_URL="https://github.com/google/cpu_features"
DIR="g"
VERSION="master"

HAS=1
[ ! -d "$CWD/$DIR" ] && HAS=0 && git clone --depth 1 $GIT_URL -b $VERSION $DIR --recursive;

[ $HAS == 1 ] && cd $DIR && git pull origin $VERSION

exit 0
