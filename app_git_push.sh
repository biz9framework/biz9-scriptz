# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : App Git Push
source ./.biz9_config.sh
echo "#################"
echo "BiZ9 App Git Push"
echo "#################"
echo "Are you sure you want to push?"
read n
yes=$(echo $n | tr -s '[:upper:]' '[:lower:]')
if [[  "$n" = "yes"  ]] ; then
    ##
    git push -f ${REPO_URL} ${GIT_BRANCH}
    else
    echo "exit"
fi
#CMS
if [ "${APP_TITLE}" = "${BIZ9_CMS_TITLE}" ]; then
    FRAMEWORK_VERSION=$($BIZ9_CMS_VERSION);
    FRAMEWORK_TITLE=${BIZ9_CMS_TITLE};
fi
#CORE
if [ "${APP_TITLE}" = "${BIZ9_CORE_TITLE}" ]; then
    FRAMEWORK_VERSION=$($BIZ9_CORE_VERSION);
    FRAMEWORK_TITLE=${BIZ9_CORE_TITLE};
fi
#DOCZ
if [ "${APP_TITLE}" = "${BIZ9_DOCZ_TITLE}" ]; then
    FRAMEWORK_VERSION=$($BIZ9_DOCZ_VERSION);
    FRAMEWORK_TITLE=${BIZ9_DOCZ_VERSION};
fi
#MOBILE
if [ "${APP_TITLE}" = "${BIZ9_MOBILE_TITLE}" ]; then
    FRAMEWORK_VERSION=$($BIZ9_MOBILE_VERSION);
    FRAMEWORK_TITLE=${BIZ9_DOCZ_TITLE};
fi
#SCRIPTZ
if [ "${APP_TITLE}" = "${BIZ9_SCRIPTZ_TITLE}" ]; then
    FRAMEWORK_VERSION=$($BIZ9_SCRIPTZ_VERSION);
    FRAMEWORK_TITLE=${BIZ9_SCRIPTZ_TITLE};
fi
#SERVICE
if [ "${APP_TITLE}" = "${BIZ9_SERVICE_TITLE}" ]; then
    FRAMEWORK_VERSION=$($BIZ9_SERVICE_VERSION);
    FRAMEWORK_TITLE=${BIZ9_SERVICE_TITLE};
fi
#TEST
if [ "${APP_TITLE}" = "${BIZ9_TEST_TITLE}" ]; then
    FRAMEWORK_VERSION=$($BIZ9_TEST_VERSION);
    FRAMEWORK_TITLE=${BIZ9_TEST_TITLE};
fi
#WEBSITE
if [ "${APP_TITLE}" = "${BIZ9_WEBSITE_TITLE}" ]; then
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
echo "Done!"
echo "----------------------------------"
exit
