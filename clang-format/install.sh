#!/bin/bash

if [ `which clang-format &> /dev/null; echo $?` -ne 0 ]
then
	echo "clang-format doesn't seem to be installed, aborting.."
	exit 6
fi

CFPATH="${HOME}"/Projects/
PYPATH="${HOME}"/.clang-format

mkdir -p "${CFPATH}" "${PYPATH}"
cp -f 42.clang-format "${CFPATH}"/.clang-format
cp -f 42-format.py "${PYPATH}"/42-format.py
