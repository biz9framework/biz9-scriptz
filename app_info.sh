# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : App Info
source ./.biz9_config.sh
echo "#################"
echo "BiZ9 App Info"
echo "#################"
#mobile
if [ -n "${BIZ9_MOBILE_VERSION}" ]; then
    echo "BIZ9 MOBILE VERSION : ${BIZ9_MOBILE_VERSION}"
fi
#web
if [ -n "${BIZ9_WEBSITE_VERSION}" ]; then
    echo "BIZ9 WEBSITE VERSION : ${BIZ9_WEBSITE_VERSION}"
fi
#core
if [ -n "${BIZ9_CORE_VERSION}" ]; then
    echo "BIZ9 CORE VERSION : ${BIZ9_CORE_VERSION}"
fi
#cms
if [ -n "${BIZ9_CMS_VERSION}" ]; then
    echo "BIZ9 CMS VERSION : ${BIZ9_CMS_VERSION}"
fi
#scriptz
if [ -n "${BIZ9_SCRIPTZ_VERSION}" ]; then
    echo "BIZ9 SCRIPTZ VERSION : ${BIZ9_SCRIPTZ_VERSION}"
fi
#testz
if [ -n "${BIZ9_TEST_VERSION}" ]; then
    echo "BIZ9 TEST VERSION : ${BIZ9_TEST_VERSION}"
fi
#server
if [ -n "${BIZ9_SERVER_VERSION}" ]; then
    echo "BIZ9 SERVER VERSION : ${BIZ9_TEST_VERSION}"
fi
#service
if [ -n "${BIZ9_SERVICE_VERSION}" ]; then
    echo "BIZ9 SERVICE VERSION : ${BIZ9_SERVICE_VERSION}"
fi
echo "----------------------------------"
echo "Project ID: ${PROJECT_ID}"
echo "APP Title: ${APP_TITLE}"
echo "APP Title ID: ${APP_TITLE_ID}"
echo "APP Version: ${APP_VERSION}"
echo "Done!"
echo "----------------------------------"
exit 1
