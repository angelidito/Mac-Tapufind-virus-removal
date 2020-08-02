#!/bin/bash
sudo su
echo Removing Tapufind files from /Users/$USER/Library/LaunchAgents
rm -r /Users/$USER/Library/LaunchAgents/*?apufind*

echo "Safari's cache will be removed."

while : do
	read -p "Do you want to continue? [Y/n]"
	case "$REPLY" in 
		y|Y )
			echo Removing /Library/Cahes/com.apple.Safari
			rm -r /Library/Cahes/com.apple.Safari 
			break
			;;
		n|N ) 
			echo "It won't be removed."
			break
			;;
		* ) 
			echo "Invalid imput."
			echo
			;;
	esac
done

echo May exist few more files at /Users/Shared
#TODO: remove those files

