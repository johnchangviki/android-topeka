#!/bin/sh

# This script on run twice on Android with Android 4.4(API level 20) and Android 5.0(API level 21) above
# to make sure all of devices has no impact on aab extension.
#/Users/chang.yuchuan/Library/Android/sdk/emulator/emulator -avd Nexus_5X_API_28
# -wipe-data -no-boot-anim
# -netdelay none -netspeed full
#

rm -f ../app/build/release/app.apks
./generateAPKs.sh
./installAPKs.sh
adb shell am start -a android.intent.action.MAIN -n com.john.samples.apps.topeka/com.google.samples.apps.topeka.activity.SignInActivity
adb logcat -c -b events | grep "am_activity_launch_time.*SignInActivity"