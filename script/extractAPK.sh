#!/bin/sh
alias bundletool="java -jar ./cmd/bundletool-all-0.9.0.jar"

# This is command to extract specific device to refine an APKs.
# bundletool help extract-apks to see available parameters
bundletool extract-apks \
--apks=../app/build/release/app.apks \
--device-spec=$1 \
--output-dir=../app/build/release/

ls -hl ../app/build/release/*.apk
