# How to use:
#
# Just place a lock.png in your home folder to overlay whatever you want
 
#!/bin/bash
scrot -e 'convert -blur 0x3 -fill black -colorize 65% $f ~/lockbg.png && rm $f'
convert -gravity center -composite ~/lockbg.png ~/icon.png ~/lockfinal.png
i3lock -u -i ~/lockfinal.png
rm ~/lockfinal.png ~/lockbg.png
