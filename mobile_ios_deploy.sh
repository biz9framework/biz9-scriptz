# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : Mobile IOS Deploy
source ./.biz9_config.sh
echo "#################"
echo "BiZ9 Mobile IOS Deploy"
echo "#################"
bash ./scriptz/dq_header.sh
cordova platform rm android
cordova platform add ios
cordova plugin add @globules-io/cordova-plugin-ios-xhr
cordova prepare
cordova compile
cordova build
bash ./scriptz/dq_footer.sh
echo "----------------------------------"
echo "Project-ID: ${PROJECT_ID}"
echo "App Title: ${APP_TITLE}"
echo "App-Title-ID: ${APP_TITLE_ID}"
echo "App Version: ${APP_VERSION}"
echo "Done!"
echo "----------------------------------"
exit 1

