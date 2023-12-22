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
    echo "Framework: BiZ9-Mobile"
    echo "Version : ${BIZ9_MOBILE_VERSION}"
fi
#WEBSITE
if [ -n "${BIZ9_WEBSITE_VERSION}" ]; then
    echo "Framework: BiZ9-Website"
    echo "Version : ${BIZ9_WEBSITE_VERSION}"
fi
#CORE
if [ -n "${BIZ9_CORE_VERSION}" ]; then
    echo "Framework: BiZ9-Core"
    echo "Version : ${BIZ9_CORE_VERSION}"
fi
#CMS
if [ -n "${BIZ9_CMS_VERSION}" ]; then
    echo "Framework: BiZ9-CMS"
    echo "Version : ${BIZ9_CMS_VERSION}"
fi
#SCRIPTZ
if [ -n "${BIZ9_SCRIPTZ_VERSION}" ]; then
    echo "Framework: BiZ9-Scriptz"
    echo "Version : ${BIZ9_SCRIPTZ_VERSION}"
fi
#TESTZ
if [ -n "${BIZ9_TEST_VERSION}" ]; then
    echo "Framework: BiZ9-Test"
    echo "Version : ${BIZ9_TEST_VERSION}"
fi
#SERVER
if [ -n "${BIZ9_SERVER_VERSION}" ]; then
    echo "Framework: BiZ9-Server"
    echo "Version : ${BIZ9_TEST_VERSION}"
fi
#SERVICE
if [ -n "${BIZ9_SERVICE_VERSION}" ]; then
    echo "Framework: BiZ9-Service"
    echo "Version : ${BIZ9_SERVICE_VERSION}"
fi
#SERVER_IP
if [ -n "${SERVER_IP}" ]; then
    echo "Server Ip: ${SERVER_IP}"
fi
#SERVER_DEPLOY_DIR
if [ -n "${SERVER_DEPLOY_DIR}" ]; then
    echo "Server Deploy Dir: ${SERVER_DEPLOY_DIR}"
fi
#SSH_KEY
if [ -n "${SSH_KEY}" ]; then
    echo "SSH Key: ${SSH_KEY}"
fi
#REPO_URL
if [ -n "${REPO_URL}" ]; then
    echo "Repo Url: ${REPO_URL}"
fi
#MONGO_PORT
if [ -n "${MONGO_PORT}" ]; then
    echo "Mongo Port: ${MONGO_PORT}"
fi
echo "----------------------------------"
echo "Project-ID: ${PROJECT_ID}"
echo "App Title: ${APP_TITLE}"
echo "App-Title-ID: ${APP_TITLE_ID}"
echo "App Version: ${APP_VERSION}"
echo "Done!"
echo "----------------------------------"
exit 1
