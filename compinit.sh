#!/bin/bash

filename=$1.cpp
if test -f $filename; then
	vim $filename
else
	cp ~/templates/complate.cpp $filename
	vim +14 $filename
fi
