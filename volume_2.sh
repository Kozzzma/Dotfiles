#!/bin/sh

volume_mute="$(pamixer --get-volume-human)"
volume="$(pamixer --get-volume)"
if [[ $volume_mute = 'muted' ]]; then
	volstat="Vol:Muted"
echo "$volstat | "
elif [[ $volume_mute != 'muted' ]]; then
	volstat="Vol:"
echo "$volstat$volume% | "
fi
