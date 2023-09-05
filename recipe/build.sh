#!/usr/bin/env bash
#
set -euo pipefail

cmake -B build/ \
    -G Ninja \
    -D SIMDJSON_DEVELOPER_MODE=OFF \
    -D BUILD_SHARED_LIBS=ON \
    ${CMAKE_ARGS}

cmake --build build/ --parallel "${CPU_COUNT}" --verbose

cmake --install  build/
