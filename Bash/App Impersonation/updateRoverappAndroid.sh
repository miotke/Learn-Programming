#!/bin/bash
# This script should install [appName].app from /AI-Android-Staging and is now a folder on every Mac.
# See policy App Impersonation Staging Folder.
# Change the [appName].app to the name of the actual app file before deploying the script.

cd /Users/Shared/AI-Android/platform-tools
./adb install ~/Desktop/Rover-release.apk
