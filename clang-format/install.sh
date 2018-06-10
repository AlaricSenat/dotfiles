#!/bin/bash

if [ `which clang-format &> /dev/null; echo $?` -ne 0 ]
then
	echo "clang-format doesn't seem to be installed, aborting.."
	exit 6
fi

CFPATH="${HOME}"/.clang-format

mkdir -p "${CFPATH}"
cp -f 42.format "${CFPATH}"/42.format
cp -f 42-format.py "${CFPATH}"/42-format.py

