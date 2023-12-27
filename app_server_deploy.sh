# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : App Server Deploy
source ./.biz9_config.sh
echo '##############'
echo 'BiZ9 App Server Deploy'
echo '##############'

SSH_KEY_DIR=other/server/ssh_key

echo "Are you sure you want to deploy?"
read n
yes=$(echo $n | tr -s '[:upper:]' '[:lower:]')
if [[  "$n" = "yes"  ]] ; then
        rsync -rave "ssh -2 -i ${SSH_KEY}" . admin@${SERVER_IP}:${SERVER_DEPLOY_DIR} --exclude .git --exclude other
fi
#CMS
if [ -n "${BIZ9_CMS_VERSION}" ]; then
    FRAMEWORK_VERSION=$($BIZ9_CMS_VERSION);
    FRAMEWORK_TITLE=${BIZ9_CMS_TITLE};
fi
#CORE
if [ -n "${BIZ9_CORE_VERSION}" ]; then
    FRAMEWORK_VERSION=$($BIZ9_CORE_VERSION);
    FRAMEWORK_TITLE=${BIZ9_CORE_TITLE};
fi
#DOCZ
if [ -n "${BIZ9_DOCZ_VERSION}" ]; then
    FRAMEWORK_VERSION=$($BIZ9_DOCZ_VERSION);
    FRAMEWORK_TITLE=${BIZ9_DOCZ_VERSION};
fi
#MOBILE
if [ -n "${BIZ9_MOBILE_VERSION}" ]; then
    FRAMEWORK_VERSION=$($BIZ9_MOBILE_VERSION);
    FRAMEWORK_TITLE=${BIZ9_MOBILE_TITLE};
fi
#SCRIPTZ
if [ -n "${BIZ9_SCRIPTZ_VERSION}" ]; then
    FRAMEWORK_VERSION=$($BIZ9_SCRIPTZ_VERSION);
    FRAMEWORK_TITLE=${BIZ9_SCRIPTZ_TITLE};
fi
#SERVICE
if [ -n "${BIZ9_SERVICE_VERSION}" ]; then
    FRAMEWORK_VERSION=$($BIZ9_SERVICE_VERSION);
    FRAMEWORK_TITLE=${BIZ9_SERVICE_TITLE};
fi
#TEST
if [ -n "${BIZ9_TEST_VERSION}" ]; then
    FRAMEWORK_VERSION=$($BIZ9_TEST_VERSION);
    FRAMEWORK_TITLE=${BIZ9_TEST_TITLE};
fi
#WEBSITE
if [ -n "${BIZ9_WEBSITE_VERSION}" ]; then
    FRAMEWORK_VERSION=$($BIZ9_WEBSITE_VERSION);
    FRAMEWORK_TITLE=${BIZ9_WEBSITE_TITLE};
fi
echo "----------------------------------"
echo "Framework Product: ${FRAMEWORK_TITLE}"
echo "Framework Version: ${FRAMEWORK_VERSION}"
echo "Project-ID: ${PROJECT_ID}"
echo "App Title: ${APP_TITLE}"
echo "App-Title-ID: ${APP_TITLE_ID}"
echo "App Version: ${APP_VERSION}"
echo "Server IP: ${SERVER_IP}"
echo "Server Deploy Directory: ${SERVER_DEPLOY_DIR}"
echo "SSH Key: ${SSH_KEY}"
echo "Done!"
echo "----------------------------------"
exit 1
