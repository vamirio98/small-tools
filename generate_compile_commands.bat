@echo off

if not exist build (
	md build
)

cd build

cmake .. -DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=ON -G Ninja
