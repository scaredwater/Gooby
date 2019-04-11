# This is a WIP!

# Check what version is intalled

# ...

# Check if necessary apps are installed

APPLIST="acl apt-transport-https ca-certificates curl fail2ban fuse git gpg-agent grsync jq mergerfs nano rsyncufw socat unzip wget"

for i in $APPLIST; do
	echo Installing $i...
	echo
	sudo apt-get -y install $i
	echo; sleep 2
done

# Upgrade Rclone service 

cat /etc/systemd/system/rclone.service | grep "gooby" > /dev/null
if ! [[ ${?} -eq 0 ]]; then
	sudo mv /etc/systemd/system/rclone* /tmp
	sudo rsync -a /opt/Gooby/scripts/services/rclonefs* /etc/systemd/system/
	sudo sed -i "s/GOOBYUSER/${USER}/g" /etc/systemd/system/rclonefs.service
fi

cat $HOME/.config/rclone/rclone.conf | grep "[Local]" > /dev/null
if ! [[ ${?} -eq 0 ]]; then
	echo [Local] >> $HOME/.config/rclone/rclone.conf
	echo type = local >> $HOME/.config/rclone/rclone.conf
	echo nounc = >> $HOME/.config/rclone/rclone.conf
fi
