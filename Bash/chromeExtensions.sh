#!/bin/sh

# finds Macs that have the Rover CX Support plugin installed

currentUser=`ls -l /dev/console | cut -d " " -f 4`

if [ -d "/Users/$currentUser/Library/Application Support/Google/Chrome/Default/Extensions/mdmdfgpelaemncpndeipbodidjmghcel" ]; then
 STATUS="true"
else 
	STATUS="false"

fi 

echo "<result>$STATUS</result>"
