#!/bin/bash

#-
# a.sh
#
# Created by vamirio on 2022 Apr 16
# Last Modified: 2022 Apr 16 00:07:03
#-

if [ ! -d "build" ]; then
	mkdir build
fi

cd build

cmake .. -DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=ON
