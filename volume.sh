#!/bin/sh

volume_mute="$(pamixer --get-volume-human)"
volume="$(pamixer --get-volume)"
if [[ $volume_mute = 'muted' ]]; then
	volstat="󰝟  Muted"
echo "$volstat | "
elif [[ $volume_mute != 'muted' ]] && [[ $volume -ge 0 ]] && [[ $volume -le 29 ]]; then
	volstat=" "
echo "$volstat$volume% | "
elif [[ $volume_mute != 'muted' ]] && [[ $volume -ge 30 ]] && [[ $volume -le 59 ]]; then
	volstat=" "
echo "$volstat$volume% | "
elif [[ $volume_mute != 'muted' ]] && [[ $volume -ge 60 ]] && [[ $volume -le 100 ]]; then
	volstat="  "
echo "$volstat$volume% | "
fi
