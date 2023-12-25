# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : Mobile IOS Deploy
echo "#################"
echo "BiZ9 Framework MObile IOS Deploy"
echo "#################"
echo 'IOS Deploy: Start';
source .biz9_config.sh
echo 'IOS Deploy: Android Platform Remove';
cordova platform rm android
echo 'IOS Deploy: IOS Platform Remove';
cordova platform rm ios
echo 'IOS Deploy: IOS Platform Add';
cordova platform add ios
echo 'IOS Deploy: IOS Plugin IOS-XHR Add';
cordova plugin add @globules-io/cordova-plugin-ios-xhr
echo 'IOS Deploy: IOS Plugin Stripe Remove';
cordova plugin rm cordova-plugin-stripe
echo 'IOS Deploy: Build Clean';
cordova clean
echo 'IOS Deploy: Build Prepare';
cordova prepare
echo 'IOS Deploy: Build Compile';
cordova compile
echo 'IOS Deploy: Build Build';
cordova build
echo 'IOS Deploy: Complete';
echo "----------------------------------"
echo "Framework Version: ${BIZ9_MOBILE_VERSION}"
echo "Project-ID: ${PROJECT_ID}"
echo "App Title: ${APP_TITLE}"
echo "App-Title-ID: ${APP_TITLE_ID}"
echo "App Version: ${APP_VERSION}"
echo "CONFIG-ID : ${CONFIG_ID}"
echo "Done!"
echo "----------------------------------"
exit 1

