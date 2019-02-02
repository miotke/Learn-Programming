#!/bin/bash -x

# Changes all script permissions to grant executable

successStatus="All permissions changed"
failedStatus="Permissions failed to change"


chmod u+x *.sh
chmod u+x App\ Impersonation/*.sh
chmod u+x sysinfo_page/*.sh
stat *.sh


echo "$successStatus"
