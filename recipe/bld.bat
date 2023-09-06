cmake -B build/ ^
    -G "Ninja" ^
    -D SIMDJSON_DEVELOPER_MODE=OFF ^
    -D BUILD_SHARED_LIBS=ON ^
    %CMAKE_ARGS%
if errorlevel 1 exit 1

cmake --build build/ --parallel %CPU_COUNT% --verbose
if errorlevel 1 exit 1

cmake --install build/
if errorlevel 1 exit 1
