#!/usr/bin/env bash

expect='Hello Docker Hub!'
result=$(/bin/sh say_hello.sh)
if [ "${expect}" != "${result}" ]; then
    echo '[NG] Test failed.'
    exit 1
fi
echo '[OK] Test succeed.'
exit 0
