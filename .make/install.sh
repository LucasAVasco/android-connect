#!/bin/bash


if [ "$1" == '--locally' ]; then  # Local installation
	# Creates the directory
	mkdir -p ~/.local/bin
	mkdir -p ~/.local/applications

	# Copies the files
	cp android-connect ~/.local/bin/
	cp interface/android-connect-pygtk ~/.local/bin/
	cp rsc/android-connect.desktop ~/.local/share/applications/

else                              # Root installation
	# Copies the files
	cp android-connect /bin/
	cp interface/android-connect-pygtk /bin/
	cp rsc/android-connect.desktop /usr/share/applications/
fi
