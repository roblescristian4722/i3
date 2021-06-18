#!/bin/bash

pactl list sinks | awk -F"Sink #" 'NF > 1 { print $2 }' | awk -v out="$1" 'NR == out { cmd = "pactl set-default-sink " $1; system(cmd); }'
