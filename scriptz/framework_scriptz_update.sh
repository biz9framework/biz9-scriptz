# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : Framework ScriptZ UpdateZ
echo "#################"
echo "BiZ9 Framework  ScriptZ Update"
echo "#################"
des_branch='unstable'
G_BIZ_SCRIPT_FOLDER="${BIZ9_HOME}/biz9-scriptz/src/stable"
G_BIZ_CHANGE_REQUEST_FOLDER="${BIZ9_HOME}/biz9-change-request/src/${des_branch}"
G_BIZ_CMS_FOLDER="${BIZ9_HOME}/biz9-cms/src/${des_branch}"
G_BIZ_CORE_FOLDER="${BIZ9_HOME}/biz9-core/src/${des_branch}"
G_BIZ_HELP_FOLDER="${BIZ9_HOME}/biz9-help/src/${des_branch}"
G_BIZ_KEYBOARD_COMMANDZ_FOLDER="${BIZ9_HOME}/biz9-keyboard-commandz"
G_BIZ_MOBILE_FOLDER="${BIZ9_HOME}/biz9-mobile/src/${des_branch}"
G_BIZ_SERVER_FOLDER="${BIZ9_HOME}/biz9-server/src/${des_branch}"
G_BIZ_SERVICE_FOLDER="${BIZ9_HOME}/biz9-service/src/${des_branch}"
G_BIZ_TEST_FOLDER="${BIZ9_HOME}/biz9-test/src/${des_branch}"
G_BIZ_WEBSITE_FOLDER="${BIZ9_HOME}/biz9-website/src/${des_branch}"
rm -rf ${BIZ9_HOME}/biz9-scriptz/src/${des_branch}/scriptz
#change-request
rm -rf ${G_BIZ_CHANGE_REQUEST_FOLDER}/scriptz
mkdir ${G_BIZ_CHANGE_REQUEST_FOLDER}/scriptz
cp -rf ${G_BIZ_SCRIPT_FOLDER}/*  ${G_BIZ_CHANGE_REQUEST_FOLDER}/scriptz
echo "change-request-${des_branch}-update-done"
#cms
rm -rf ${G_BIZ_CMS_FOLDER}/scriptz
mkdir ${G_BIZ_CMS_FOLDER}/scriptz
cp -rf ${G_BIZ_SCRIPT_FOLDER}/*  ${G_BIZ_CMS_FOLDER}/scriptz
cp -rf ${G_BIZ_SERVICE_FOLDER}/routes/cloud  ${G_BIZ_CMS_FOLDER}/routes/
echo "cms-${des_branch}-update-done"
#core
rm -rf ${G_BIZ_CORE_FOLDER}/scriptz
mkdir ${G_BIZ_CORE_FOLDER}/scriptz
cp -rf ${G_BIZ_SCRIPT_FOLDER}/*  ${G_BIZ_CORE_FOLDER}/scriptz
echo "core-${des_branch}-update-done"
#help
rm -rf ${G_BIZ_HELP_FOLDER}/scriptz
mkdir ${G_BIZ_HELP_FOLDER}/scriptz
cp -rf ${G_BIZ_SCRIPT_FOLDER}/*  ${G_BIZ_HELP_FOLDER}/scriptz
echo "help-${des_branch}-update-done"
#keyboard
rm -rf ${G_BIZ_KEYBOARD_COMMANDZ_FOLDER}/scriptz
mkdir ${G_BIZ_KEYBOARD_COMMANDZ_FOLDER}/scriptz
cp -rf ${G_BIZ_SCRIPT_FOLDER}/*  ${G_BIZ_KEYBOARD_COMMANDZ_FOLDER}/scriptz
echo "keyboard-update-done"
#mobile
rm -rf ${G_BIZ_MOBILE_FOLDER}/scriptz
mkdir ${G_BIZ_MOBILE_FOLDER}/scriptz
cp -rf ${G_BIZ_SCRIPT_FOLDER}/*  ${G_BIZ_MOBILE_FOLDER}/scriptz
echo "mobile-${des_branch}-update-done"
#server
rm -rf ${G_BIZ_SERVER_FOLDER}/scriptz
mkdir ${G_BIZ_SERVER_FOLDER}/scriptz
cp -rf ${G_BIZ_SCRIPT_FOLDER}/*  ${G_BIZ_SERVER_FOLDER}/scriptz
echo "server-${des_branch}-update-done"
#service
rm -rf ${G_BIZ_SERVICE_FOLDER}/scriptz
mkdir ${G_BIZ_SERVICE_FOLDER}/scriptz
cp -rf ${G_BIZ_SCRIPT_FOLDER}/*  ${G_BIZ_SERVICE_FOLDER}/scriptz
echo "service-${des_branch}-update-done"
#test
rm -rf ${G_BIZ_TEST_FOLDER}/scriptz
mkdir ${G_BIZ_TEST_FOLDER}/scriptz
cp -rf ${G_BIZ_SCRIPT_FOLDER}/*  ${G_BIZ_TEST_FOLDER}/scriptz
echo "test-${des_branch}-update-done"
#website
rm -rf ${G_BIZ_WEBSITE_FOLDER}/scriptz
mkdir ${G_BIZ_WEBSITE_FOLDER}/scriptz
cp -rf ${G_BIZ_SCRIPT_FOLDER}/*  ${G_BIZ_WEBSITE_FOLDER}/scriptz
cp -rf ${G_BIZ_SERVICE_FOLDER}/routes/cloud  ${G_BIZ_WEBSITE_FOLDER}/routes/
echo "website-${des_branch}-update-done"
echo "----------------------------------"
echo "Done!"
echo "----------------------------------"
exit
