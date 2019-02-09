	
#!/bin/bash
SYNC_ELEM=".fonts .icons .zshrc .vimrc .vim \
		.bin Templates 
		.config/Terminator \
		.cache/chromium .cache/thunderbird \
		.config/Code/User/keybindings.json \
		.config/Code/User/settings.json" 
 
RSYNC="rsync -vrulEpn --progress --human-readable"
set +xue

if [ $# -ne 1 ] || { [ "$1" != "pull" ] && [ "$1" != "push" ]; }; then
    echo "* Error: Illegal number of arguments, expecting exactly one argument"
    echo "* Usage: ./Backupskript.sh <arch>"
    echo "*   <arch>: push pull"
    exit 1
fi

echo "Start ${1}ing backups now"
SYNC_FOLDER="${HOME}/Linux"
echo "Sync Folder: $SYNC_FOLDER"

if [ "$1" == "push" ]; then
	if [ -d "$SYNC_FOLDER" ]; then
		${RSYNC} $SYNC_ELEM ${SYNC_FOLDER}
	else
		echo ERROR: SYNC_FOLDER was not found
		exit 1
	fi	
	dconf dump /org/gnome/shell/keybindings/ > ${SYNC_FOLDER}/keybindings.txt
elif [ "$1" == "pull" ]; then
	if [ -d "$SYNC_FOLDER" ]; then
		for SYNC_ELEMENTS in ${SYNC_ELEM}
		do
			${RSYNC} ${SYNC_FOLDER}/${SYNC_ELEMENTS} ${SYNC_ELEMENTS} 
		done
	else
		echo ERROR: SYNC_FOLDER was not found
		exit 1
	fi	
	dconf load /org/gnome/shell/keybindings/ < ${SYNC_FOLDER}/keybindings.txt
fi
