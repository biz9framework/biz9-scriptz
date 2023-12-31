# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : Mobile Android Icon Update
source ./.biz9_config.sh
echo "#################"
echo "BiZ9 Mobile Android Icon Update"
echo "#################"
node other/scriptz/icon_resize.js
cp -rf other/cordova/icon/512.png www/images/preload-logo.png
echo "----------------------------------"
echo "Project-ID: ${PROJECT_ID}"
echo "APP Title: ${APP_TITLE}"
echo "APP Title-ID: ${APP_TITLE_ID}"
echo "APP Version: ${APP_VERSION}"
echo "Done!"
echo "----------------------------------"
exit 1
