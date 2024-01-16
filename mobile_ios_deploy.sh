# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : Mobile IOS Deploy
echo "#################"
echo "BiZ9 Framework MObile IOS Deploy"
echo "#################"
echo 'BiZ9 Deploy: Start';
source .biz9_config.sh
echo 'BiZ9 Deploy: Android Platform Remove';
cordova platform rm android
echo 'BiZ9 Deploy: IOS Platform Remove';
cordova platform rm ios
echo 'BiZ9 Deploy: IOS Platform Add';
cordova platform add ios
echo 'BiZ9 Deploy: IOS Plugin IOS-XHR Add';
cordova plugin add @globules-io/cordova-plugin-ios-xhr
echo 'BiZ9 Deploy: IOS Plugin In App Purchases Add';
cordova plugin add cordova-plugin-inapppurchases
echo 'BiZ9 Deploy: IOS Plugin Stripe Remove';
cordova plugin rm cordova-plugin-stripe
echo 'BiZ9 Deploy: Build Clean';
cordova clean
echo 'BiZ9 Deploy: Build Prepare';
cordova prepare
echo 'BiZ9 Deploy: Build Compile';
cordova compile
echo 'BiZ9 Deploy: Build Build';
cordova build
echo 'BiZ9 Deploy: Complete';
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

