#!/bin/bash

CMD="defaults write com.apple.finder AppleShowAllFiles "

case $1 in
	[yY] | [yY][eE][sS])
		CMD=$CMD"YES"
		echo "Showing hidden files in Finder"
		;;
	[nN] | [nN][oO])
		CMD=$CMD"NO"
		echo "Stop showing hidden files in Finder"
		;;
	*)
		echo "Invalid state"
		;;
esac

$CMD

