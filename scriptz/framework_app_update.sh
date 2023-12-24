# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : Framework App Update
echo "#################"
echo "BiZ9 Framework App Update"
echo "#################"
G_PROJECT_FOLDER="$HOME/www/projectz/"
G_PROJECT_SRC_FOLDER="$HOME/www/doqbox/biz9/"
G_BRANCH_DIR='stable'
# prod start #
echo "Enter Project-ID"
read project_id
echo "Enter BiZ9 Framework product [cms, mobile, server, server, service, website]"
read app_type
echo "Enter directory"
read folder_id
# prod end #

# test start #
: '
project_id=19
app_type='cms'
folder_id='cms'
'
# test end #

G_BIZ_APP_DIR=${G_PROJECT_FOLDER}${project_id}/${folder_id}
#go dir
cd ${G_BIZ_APP_DIR}/
# mk backup
rm -rf .biz9_update_bk
mkdir .biz9_update_bk

if [ "${app_type}" = "mobile" ]; then
FRAMEWORK_SRC_PROJECT=${G_PROJECT_SRC_FOLDER}${BIZ9_MOBILE_TITLE,,}/src/${G_BRANCH_DIR}/
#source
source ${FRAMEWORK_SRC_PROJECT}.biz9_config.sh
   #bk configs
    cp -rf .biz9_config.sh .biz9_update_bk/
    cp -rf www/scripts/biz9-mobile/scriptz/config.js .biz9_update_bk/
    #copy src to project dir
    cp -rf ${FRAMEWORK_SRC_PROJECT}config.xml ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}gulpfile.js ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}node_modules ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}package.json ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}platforms ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}plugins ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}scriptz ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}www ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}other/scriptz ${G_BIZ_APP_DIR}/other
    cp -rf ${FRAMEWORK_SRC_PROJECT}other/cordova/android ${G_BIZ_APP_DIR}/other/cordova/
    cp -rf ${FRAMEWORK_SRC_PROJECT}other/cordova/config ${G_BIZ_APP_DIR}/other/cordova/
    #mv configs
    cp -rf  .biz9_update_bk/.biz9_config.sh ${G_BIZ_APP_DIR}/
    cp -rf  .biz9_update_bk/config.js ${G_BIZ_APP_DIR}/www/scripts/biz9-mobile/scriptz/
    #update versionz
    sed -i "s/BIZ9_MOBILE_VERSION=.*/BIZ9_MOBILE_VERSION='${BIZ9_MOBILE_VERSION}';/" ${G_BIZ_APP_DIR}/www/scripts/biz9-mobile/scriptz/config.js
    sed -i "s/BIZ9_MOBILE_VERSION=.*/BIZ9_MOBILE_VERSION='${BIZ9_MOBILE_VERSION}';/" ${G_BIZ_APP_DIR}/.biz9_config.sh
    echo "Project Update Complete"
    print_result="BiZ9 Framework Mobile Version ${BIZ9_MOBILE_VERSION}"
    fi
if [ "${app_type}" = "service" ]; then
    FRAMEWORK_SRC_PROJECT=${G_PROJECT_SRC_FOLDER}${BIZ9_SERVICE_TITLE,,}/src/${G_BRANCH_DIR}/
    #source
    source ${FRAMEWORK_SRC_PROJECT}.biz9_config.sh
    #bk configs
    cp -rf .biz9_config.sh .biz9_update_bk/
    cp -rf app.js .biz9_update_bk/
    #copy src to project dir
    cp -rf ${FRAMEWORK_SRC_PROJECT}bin ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}node_modules ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}package.json ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}public ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}routes ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}scriptz ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}views ${G_BIZ_APP_DIR}/
    #mv configs
    cp -rf  .biz9_update_bk/.biz9_config.sh ${G_BIZ_APP_DIR}/
    #update versionz
    sed -i "s/BIZ9_SERVICE_VERSION=.*/BIZ9_SERVICE_VERSION='${BIZ9_SERVICE_VERSION}';/" ${G_BIZ_APP_DIR}/.biz9_config.sh
    sed -i "s/BIZ9_SERVICE_VERSION=.*/BIZ9_SERVICE_VERSION='${BIZ9_SERVICE_VERSION}';/" ${G_BIZ_APP_DIR}/app.js
    print_result="${BIZ9_SERVICE_TITLE} Version: ${BIZ9_SERVICE_VERSION}"
fi
if [ "${app_type}" = "cms" ]; then
    FRAMEWORK_SRC_PROJECT=${G_PROJECT_SRC_FOLDER}${BIZ9_CMS_TITLE,,}/src/${G_BRANCH_DIR}/
    #source
    source ${FRAMEWORK_SRC_PROJECT}.biz9_config.sh
    #bk configs
    cp -rf .biz9_config.sh .biz9_update_bk/
    cp -rf app.js .biz9_update_bk/
    #copy src to project dir
    cp -rf ${FRAMEWORK_SRC_PROJECT}bin ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}node_modules ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}package.json ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}public ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}routes ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}scriptz ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}views ${G_BIZ_APP_DIR}/
    #mv configs
    cp -rf  .biz9_update_bk/.biz9_config.sh ${G_BIZ_APP_DIR}/
    #update versionz
    sed -i "s/BIZ9_CMS_VERSION=.*/BIZ9_CMS_VERSION='${BIZ9_CMS_VERSION}';/" ${G_BIZ_APP_DIR}/.biz9_config.sh
    sed -i "s/BIZ9_CMS_VERSION=.*/BIZ9_CMS_VERSION='${BIZ9_CMS_VERSION}';/" ${G_BIZ_APP_DIR}/app.js
fi
if [ "${app_type}" = "server" ]; then
    FRAMEWORK_SRC_PROJECT=${G_PROJECT_SRC_FOLDER}${BIZ9_SERVER_TITLE,,}/src/${G_BRANCH_DIR}/
    #source
    source ${FRAMEWORK_SRC_PROJECT}.biz9_config.sh
    #bk configs
    cp -rf .biz9_config.sh .biz9_update_bk/
    #copy src to project dir
    cp -rf ${FRAMEWORK_SRC_PROJECT}/* ${G_BIZ_APP_DIR}/
    #mv configs
    cp -rf  .biz9_update_bk/.biz9_config.sh ${G_BIZ_APP_DIR}/
    #update versionz
    sed -i "s/BIZ9_SERVER_VERSION=.*/BIZ9_SERVER_VERSION='${BIZ9_SERVER_VERSION}';/" ${G_BIZ_APP_DIR}/.biz9_config.sh
    print_result="${BIZ9_SERVER_TITLE} Version: ${BIZ9_SERVER_VERSION}"
fi
if [ "${app_type}" = "vendor" ]; then
    FRAMEWORK_SRC_PROJECT=${G_PROJECT_SRC_FOLDER}${BIZ9_VENDOR_TITLE,,}/src/${G_BRANCH_DIR}/
    #source
    source ${FRAMEWORK_SRC_PROJECT}.biz9_config.sh
    #bk configs
    cp -rf .biz9_config.sh .biz9_update_bk/
    cp -rf app.js .biz9_update_bk/
    #copy src to project dir
    cp -rf ${FRAMEWORK_SRC_PROJECT}bin ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}node_modules ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}package.json ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}public ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}routes ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}scriptz ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}views ${G_BIZ_APP_DIR}/
    #mv configs
    cp -rf  .biz9_update_bk/.biz9_config.sh ${G_BIZ_APP_DIR}/
    #update versionz
    sed -i "s/BIZ9_VENDOR_VERSION=.*/BIZ9_VENDOR_VERSION='${BIZ9_VENDOR_VERSION}';/" ${G_BIZ_APP_DIR}/.biz9_config.sh
    sed -i "s/BIZ9_VENDOR_VERSION=.*/BIZ9_VENDOR_VERSION='${BIZ9_VENDOR_VERSION}';/" ${G_BIZ_APP_DIR}/app.js
    print_result="${BIZ9_VENDOR_TITLE} Version: ${BIZ9_VENDOR_VERSION}"
fi

if [ "${app_type}" = "vendor-payment" ]; then
    FRAMEWORK_SRC_PROJECT=${G_PROJECT_SRC_FOLDER}${BIZ9_VENDOR_PAYMENT_TITLE,,}/src/${G_BRANCH_DIR}/
    #source
    source ${FRAMEWORK_SRC_PROJECT}.biz9_config.sh
    #bk configs
    cp -rf .biz9_config.sh .biz9_update_bk/
    cp -rf app.js .biz9_update_bk/
    #copy src to project dir
    cp -rf ${FRAMEWORK_SRC_PROJECT}bin ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}node_modules ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}package.json ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}public ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}routes ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}scriptz ${G_BIZ_APP_DIR}/
    cp -rf ${FRAMEWORK_SRC_PROJECT}views ${G_BIZ_APP_DIR}/
    #mv configs
    cp -rf  .biz9_update_bk/.biz9_config.sh ${G_BIZ_APP_DIR}/
    #update versionz
    sed -i "s/BIZ9_VENDOR_PAYMENT_VERSION=.*/BIZ9_VENDOR_PAYMENT_VERSION='${BIZ9_VENDOR_PAYMENT_VERSION}';/" ${G_BIZ_APP_DIR}/.biz9_config.sh
    sed -i "s/BIZ9_VENDOR_PAYMENT_VERSION=.*/BIZ9_VENDOR_PAYMENT_VERSION='${BIZ9_VENDOR_PAYMENT_VERSION}';/" ${G_BIZ_APP_DIR}/app.js
    print_result="${BIZ9_VENDOR_PAYMENT_TITLE} Version: ${BIZ9_VENDOR_PAYMENT_VERSION}"
fi
echo "----------------------------------"
echo ${print_result}
echo "Project-ID: ${project_id}"
echo "App Type: ${app_type}"
echo "App Title: ${APP_TITLE}"
echo "App-Title-ID: ${APP_TITLE_ID}"
echo "APP Version: ${APP_VERSION}"
echo "Directory: ${folder_id}"
echo "Done!"
echo "----------------------------------"
exit 1
