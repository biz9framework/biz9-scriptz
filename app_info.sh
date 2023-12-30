# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : App Info
source ./.biz9_config.sh
echo "#################"
echo "BiZ9 App Info"
echo "#################"
#MOBILE
if [ -n "${BIZ9_MOBILE_VERSION}" ]; then
    echo "Framework Product: BiZ9-Mobile"
    echo "Framework Version: ${BIZ9_MOBILE_VERSION}"
    echo "Config-ID: ${CONFIG_ID}"
    echo "App Vendor: ${APP_VENDOR}"
fi
#WEBSITE
if [ -n "${BIZ9_WEBSITE_VERSION}" ]; then
    echo "Framework Product: BiZ9-Website"
    echo "Framework Version: ${BIZ9_WEBSITE_VERSION}"
fi
#CORE
if [ -n "${BIZ9_CORE_VERSION}" ]; then
    echo "Framework Product: BiZ9-Core"
    echo "Framework Version: ${BIZ9_CORE_VERSION}"
fi
#CMS
if [ -n "${BIZ9_CMS_VERSION}" ]; then
    echo "Framework Product: BiZ9-CMS"
    echo "Framework Version: ${BIZ9_CMS_VERSION}"
fi
#SCRIPTZ
if [ -n "${BIZ9_SCRIPTZ_VERSION}" ]; then
    echo "Framework Product: BiZ9-Scriptz"
    echo "Framework Version: ${BIZ9_SCRIPTZ_VERSION}"
fi
#TESTZ
if [ -n "${BIZ9_TEST_VERSION}" ]; then
    echo "Framework Product: BiZ9-Test"
    echo "Framework Version: ${BIZ9_TEST_VERSION}"
fi
#SERVER
if [ -n "${BIZ9_SERVER_VERSION}" ]; then
    echo "Framework Product: BiZ9-Server"
    echo "Framework Version: ${BIZ9_TEST_VERSION}"
fi
#SERVICE
if [ -n "${BIZ9_SERVICE_VERSION}" ]; then
    echo "Framework Product: BiZ9-Service"
    echo "Framework Version: ${BIZ9_SERVICE_VERSION}"
fi
#SERVER_IP
if [ -n "${SERVER_IP}" ]; then
    echo "Server Ip: ${SERVER_IP}"
fi
#SERVER_DEPLOY_DIR
if [ -n "${SERVER_DIR}" ]; then
    echo "Server Deploy Dir: ${SERVER_DEPLOY_DIR}"
fi
#SSH_KEY
if [ -n "${SSH_KEY}" ]; then
    echo "SSH Key: ${SSH_KEY}"
fi
#REPO_URL
if [ -n "${GIT_REPO}" ]; then
    echo "GIT Repo: ${GIT_REPO}"
fi
echo "----------------------------------"
echo "Project-ID: ${PROJECT_ID}"
echo "App Title: ${APP_TITLE}"
echo "App-Title-ID: ${APP_TITLE_ID}"
echo "App Version: ${APP_VERSION}"
echo "Done!"
echo "----------------------------------"
exit 1
