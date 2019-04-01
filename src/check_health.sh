#!/usr/bin/env sh

cd $(dirname $0);

expect='Hello Docker Hub!'
result=$(./say_hello.sh)

if [ "${expect}" != "${result}" ]; then
    echo '[NG] Test failed.'
    exit 1
fi

echo '[OK] Test succeed.'
exit 0
