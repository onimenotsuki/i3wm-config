#!/bin/sh
bar_bg="#fcfcfc"
bar_fg="#efefef"
AMASTER=`amixer get Master | awk 'END{gsub(/\[|\]|%/,""); print $5}'`
PERCBAR=`echo "$AMASTER" | gdbar -bg $bar_bg -fg $bar_fg -h 7 -w 60 -s o -ss 1 -sw 5 -nonl`
#echo "^ca(4,amixer set Master 1%+)^ca(5,amixer set Master 1%-)$PERCBAR^ca()^ca()"
echo "$PERCBAR"
