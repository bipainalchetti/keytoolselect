#!/bin/bash

# Define the possible locations of keytool
keytool_locations=("/usr/bin/keytool" "/java/openjdk11/keytool")

# Loop through the locations and check if keytool exists
for location in "${keytool_locations[@]}"; do
    if [ -x "$location" ]; then
        echo "Found keytool at: $location"
        exit 0
    fi
done

# If keytool was not found in any location
echo "keytool not found in any of the specified locations."
exit 1
