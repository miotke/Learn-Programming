#!/bin/bash
# This script should install [appName].app from /AI-iOS-Staging and is now a folder on every Mac.
# See policy App Impersonation Staging Folder.
# Change the [appName].app to the name of the actual app file before deploying the script.

localadmin=$(stat -f%Su /dev/console)
61=$(id -u $loggedInUser)

/bin/launchctl asuser $61 sudo -iu $localadmin /usr/bin/xcrun simctl install booted /AI-iOS-Staging/[appName].app
