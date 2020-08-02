#!/bin/bash

clear
echo Removing Tapufind files from /Users/$USER/Library/LaunchAgents
echo
rm -r /Users/$USER/Library/LaunchAgents/*?apufind*
echo
echo Files have been removed (if have existed).

while [[ true ]] ; do
	echo 
	echo "Safari cache will be removed.
Do you want to continue? [Y/n]"
	read  
	case "$REPLY" in 
		y|Y )
			echo
			echo Removing /Library/Cahes/com.apple.Safari
			rm -r /Library/Cahes/com.apple.Safari 
			echo
			echo Cache have been removed.
			break
			;;
		n|N ) 
			echo
			echo "It won't be removed."
			break
			;;
		* ) 
			echo
			echo "Invalid imput."
			;;
	esac
done

echo
echo " Warning !!!
Few more Tapufind files may exist at /Users/Shared"

#TODO: remove those files

echo
read -p "Press Enter to continue..."
echo
