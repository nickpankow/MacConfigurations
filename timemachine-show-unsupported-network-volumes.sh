#!/bin/bash

CMD="defaults write com.apple.systempreferences TMShowUnsupportedNetworkVolumes "

case $1 in
	[yY] | [yY][eE][sS])
		CMD=$CMD"1"
		echo "Showing unsupported network volumes in Time Machine"
		;;
	[nN] | [n|N][O|o])
		CMD=$CMD"0"
		echo "Stop showing unsupported network volumes in Time Machine"
		;;
	*)
		echo "Invalid state"
		;;
esac

$CMD
