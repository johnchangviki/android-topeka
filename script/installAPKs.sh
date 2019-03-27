#!/bin/sh
alias bundletool="java -jar ./cmd/bundletool-all-0.9.0.jar"

# This is command to install APKs on connected device
# bundletool help install-apks to see available parameters
bundletool install-apks \
--apks=../app/build/release/app.apks