﻿# Set server URL for database updates

$server_url='http://server/labusage/labavailwriter.php'

# Grab workstation hostname

$hostname=hostname

# Set parameters

$params=@{machine=$hostname;mstatus='0'}

# Run Invoke-WebRequest to write availability status to server

Invoke-WebRequest -UseBasicParsing -Uri $server_url -Method POST -Body $params