HOME_CONFIG=$HOME"/.config/"
CONFIG_PATHS=("i3/config" "i3status/config" "alacritty/alacritty.yml" "polybar/config.ini" "polybar/launch.sh")
BACKUP="_BACKUP"

for cf in ${CONFIG_PATHS[@]}; do
	# Create backup coz im dumb
	cp $HOME_CONFIG$cf $HOME_CONFIG$cf$BACKUP
	
	# Copy config file
	echo "Copying "$cf" to" $HOME_CONFIG$cf
	cp $cf $HOME_CONFIG$cf
done
echo "Copy done! Restart i3wm in place."
