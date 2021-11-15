#!/bin/bash


echo "------------- Starting mongod service... -------------"
# --fork changes the output from console to the specified log in --logpath
mongod --bind_ip_all --fork --logpath /flights/db/mongod.log
# mongod 

sleep 3

echo "------------- Executing import_distances.sh... -------------"
/flights/import_distances.sh

sleep infinity

