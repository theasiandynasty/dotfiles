#!/bin/bash

BG="#ff09110a"
BG1="#ff1e3921"
COL2="#ff76874d"
COL1="#ffad6031"
FG="#ff95b462"
COL3="#ffe8c936"
FONT="-xos4-terminus-medium-r-normal--12-120-72-72-c-60-iso8859-1"

date1(){
        DATE1=$(date '+%I:%M')
        echo "$DATE1"
}

date2(){
        DATE2=$(date '+%a %d %b')
        echo "$DATE2"
}

work(){
	WORKSPACE=$(xprop -root -notype _NET_CURRENT_DESKTOP | egrep -o "[0-9]");
	echo "$WORKSPACE"
}

vol(){
        VOL=$(amixer get Master | egrep -o "[0-9]+%" | egrep -o "[0-9]*")
        VOL_STATUS=$(amixer get Master | grep "Mono:" | awk '{print $6}')
        case "$VOL_STATUS" in
            "[off]") echo "0";;
            "[on]") echo "$VOL";;
        esac
}

while true; do
        echo "%{l}%{B$BG1}%{F$FG} $(work) %{B-}  %{F$COL1}$(vol)  %{F$COL2}$(date2)  %{F$COL3}$(date1)  "
        sleep 0.1;
done | lemonbar -f "$FONT" -B "$BG" -g "200x20+20+20"
