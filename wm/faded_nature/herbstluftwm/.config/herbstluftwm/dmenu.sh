TITLE=$(mpc current)

if [ -z $TITLE ]; then
    TITLE="exec_"
else
    TITLE=$(mpc current)
fi

dmenu_run -i -noinput -x 240 -y 20 -h 20 -w 600 -p "$TITLE" -nb "#09110A" -nf "#76874D" -sb "#1E3921" -sf "#95B462"
