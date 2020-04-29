#!/bin/sh
# Say bye to shutdown your pc
#uses zenity to ask first.
zenity --question --title "Shutdown Confirmation"
--text "Are you sure you want to shutdown?"
if [ "$?" -eq "0" ];
then
# Do shutdown at here.
#Ubuntu probably needs gksudo instead of sudo
sudo init 0;
fi
