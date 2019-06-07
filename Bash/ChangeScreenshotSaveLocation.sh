#!/bin/bash

# Creates a new directory called 'Screenshots' on the user's desktop and changes the save location of ScreenCapture to that new directory

function changeScreenshotSaveLocation {

    # Variables
    screenshotDirectory=~/Desktop/Screenshots
    # End Variables

    mkdir $screenshotDirectory

    # Changes the default location of Screen Capture
    defaults write com.apple.screencapture location $screenshotDirectory

    # Restarts SystemUIServer
    killall SystemUIServer
    echo "SystemUIServer restarted"
    
    echo "Screenshots are now saved to $screenshotDirectory"
}

# Call changeScreenshotSaveLocation function
changeScreenshotSaveLocation

exit 0