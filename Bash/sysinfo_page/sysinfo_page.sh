#!/bin/bash -x

# sysinfo_page  - A script to product an html file

#### CONSTANTS
TITLE="System Info for "
RIGHT_NOW=$(date +"%x %r %Z")
TIME_STAMP="Updated on $RIGHT_NOW by $USER"


#### Functions



#### Main
cat <<- _EOF_
    <html>
        <head>
            <link rel="stylesheet" type="text/css" href="backgroundColor.css"
            <title>
                $title $HOSTNAME
            </title>
        </head>

        <body>
            <h1>$title $HOSTNAME</h1>
            <p>$TIME_STAMP</p>
            $(system_info)
            $(show_uptime)
            $(drive_space)
            $(home_space)
        </body>
    </html>
_EOF_
