#!/bin/sh
alias bundletool="java -jar ./cmd/bundletool-all-0.9.0.jar"

# This is command to fetch information of connected device
# bundletool help get-device-spec to see available parameters
bundletool get-device-spec --output=$1