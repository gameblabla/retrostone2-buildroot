#!/bin/sh

[ -z "$1" ] || [ "x$1" = "xstart" ] || exit 0

amixer -c 0 sset 'Left Mixer Left DAC' mute > /dev/null 2>&1;
amixer -c 0 sset 'Right Mixer Left DAC' mute > /dev/null 2>&1;
amixer -c 0 sset 'Right Mixer Right DAC' mute > /dev/null 2>&1;
amixer -c 0 sset 'Power Amplifier Mixer' mute > /dev/null 2>&1;
amixer -c 0 sset 'Power Amplifier DAC' unmute > /dev/null 2>&1;
amixer -c 0 sset 'Power Amplifier Mute' unmute > /dev/null 2>&1;
amixer -c 0 sset 'Power Amplifier' 68% > /dev/null 2>&1;
amixer -c 0 sset 'Master' 100% > /dev/null 2>&1;
