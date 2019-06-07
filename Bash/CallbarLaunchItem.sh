#!/bin/bash
# Sets a script to launch Callbar.app at login of the current user. 
# This can be used to open any number of apps at login. 


# grab currently logged in user by checking ownership of /dev/console
CurrentUser=/bin/ls -l /dev/console | /usr/bin/awk '{ print $3 }'\

# now open Callbar.app
open /Applications/Callbar.app

# exiting script
exit 0
