#!/bin/sh
alias bundletool="java -jar ./cmd/bundletool-all-0.9.0.jar"
rm -f ../app/build/release/app.apks
# This is command to converts aab to general APKs
# bundletool help build-apks to see available parameters
bundletool build-apks \
--bundle=../app/build/release/app.aab \
--output=../app/build/release/app.apks \
--connected-device

# In addition, display estimated download sizes[MIN,MAX]
ls -hl ../app/build/release/app.apks
bundletool get-size total --apks=../app/build/release/app.apks
