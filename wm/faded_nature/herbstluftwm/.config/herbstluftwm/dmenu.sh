MUSIC=$(mpc current -f "%title%")
dmenu_run -i -noinput -x 240 -y 20 -h 20 -w 600 -p "$MUSIC" -nb "#09110A" -nf "#76874D" -sb "#1E3921" -sf "#95B462"
