#!/bin/sh

key=$(xkb-switch | cut -b 1,2)

if [ $key = us ]; then
	echo "EN | "
else
	echo "RU | "
fi
