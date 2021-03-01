#!/bin/bash

#This will copy out build artifacts and extract files needed by MaNGOS
#Expect 3 Volume Mappings for /build, /client, and /server

# (Optional) Copy build artifacts to build dir for archival
cp -rf /mangos/* /build

#Copy built tools to client dir
cp -rf /mangos/bin/tools/* /client

#Permissions Hack (777 is too much but this makes it easy)
chmod -R 777 /client

#Switch to client dir and extract dbc, maps, vmaps, and mmaps (using 4 Threads for mmaps)
cd /client && printf '4\n4' | ./ExtractResources.sh a

#Copy built dbc, maps, vmaps, and mmaps to server dir
cp -rf /client/dbc /server
cp -rf /client/maps /server
cp -rf /client/vmaps /server
cp -rf /client/mmaps /server

exec "$@"
