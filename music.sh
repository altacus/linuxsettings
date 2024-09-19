#!/bin/sh

nowplaying=$(playerctl -p chromium metadata --format '{{ artist }} - {{ title }}')
color="#FFFF00"

echo "🎷📻🎺 $nowplaying"
echo "$color"
exit 0
