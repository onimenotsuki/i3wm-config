#!/bin/sh
ScreenWidth=1366
fg="#efefef"
bg="#277a6d"
bg_volume="#1177aa"
font='Droid Sans Fallback-8:bold'
WidthPanelInfo=`expr $ScreenWidth / 2 - 100`
WidthPanelClock=200
WidthPanelVolume=100
PosX_info=`expr $ScreenWidth - $WidthPanelInfo - $WidthPanelVolume`
PosX_clock=`expr $ScreenWidth / 2 - $(expr $WidthPanelClock / 2)`
PosX_volume=`expr $ScreenWidth - $WidthPanelVolume`

conky -c ~/.i3/assets/conky/info.conkyrc | dzen2 -p -ta r -e 'button3=' -fn 'Droid Sans Fallback-8:bold' -fg $fg -bg $bg -h 24 -w $WidthPanelInfo -x $PosX_info &
conky -c ~/.i3/assets/conky/clock.conkyrc | dzen2 -p -ta c -e 'button3=' -fn 'Droid Sans Fallback-8:bold' -fg $fg -bg $bg -h 24 -w $WidthPanelClock -x $PosX_clock &
conky -c ~/.i3/assets/conky/volume.conkyrc | dzen2 -p -ta r -e 'button3=' -fn 'Droid Sans Fallback-8:bold' -fg $fg -bg $bg_volume -h 24 -w $WidthPanelVolume -x $PosX_volume &
