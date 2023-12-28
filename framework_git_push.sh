# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : BiZ9 Framework Git Push
echo "#################"
echo "BiZ9 Framework Git Push"
echo "#################"
#prod-start
echo "Enter APP Type: [change-request, cms, core, help, mobile, scriptz, server, service, test, website]"
read app_type
echo "Enter Branch: [unstable, testing, stable]"
read branch_dir
echo "Are you sure you want to push?"
g_push=false;
read n
yes=$(echo $n | tr -s '[:upper:]' '[:lower:]')
if [[  "$n" = "yes"  ]] ; then
    g_push=true;
fi
#prod-end
##test-start##
: '
app_type='website'
branch_dir='stable'
g_push=true;
'
##test-end##
if [ "${app_type}" = "help" ]&& [ "${g_push}" == true ] ; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_HELP_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    source .biz9_config.sh
    BIZ9_VERSION=${BIZ9_HELP_VERSION};
    git push -f ${GIT_REPO} ${BIZ9_GIT_BRANCH}
fi
if [ "${app_type}" = "website" ]&& [ "${g_push}" == true ] ; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_WEBSITE_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    source .biz9_config.sh
    BIZ9_VERSION=${BIZ9_WEBSITE_VERSION};
    git push -f ${GIT_REPO} ${BIZ9_GIT_BRANCH}
fi
if [ "${app_type}" = "service" ]&& [ "${g_push}" == true ] ; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_SERVICE_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    source .biz9_config.sh
    BIZ9_VERSION=${BIZ9_SERVICE_VERSION};
    git push -f ${GIT_REPO} ${BIZ9_GIT_BRANCH}
fi
if [ "${app_type}" = "server" ]&& [ "${g_push}" == true ] ; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_SERVER_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    source .biz9_config.sh
    BIZ9_VERSION=${BIZ9_SERVER_VERSION};
    git push -f ${GIT_REPO} ${BIZ9_GIT_BRANCH}
fi
if [ "${app_type}" = "cms" ]&& [ "${g_push}" == true ] ; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_CMS_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    source .biz9_config.sh
    BIZ9_VERSION=${BIZ9_CMS_VERSION};
    git push -f ${GIT_REPO} ${BIZ9_GIT_BRANCH}
fi
if [ "${app_type}" = "mobile" ]&& [ "${g_push}" == true ] ; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_MOBILE_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    source .biz9_config.sh
    BIZ9_VERSION=${BIZ9_MOBILE_VERSION};
    git push -f ${GIT_REPO} ${BIZ9_GIT_BRANCH}
fi
if [ "${app_type}" = "change-request" ]&& [ "${g_push}" == true ] ; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_CHANGE_REQUEST_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    source .biz9_config.sh
    BIZ9_VERSION=${BIZ9_CHANGE_REQUEST_VERSION};
    echo 'done'
    git push -f ${GIT_REPO} ${BIZ9_GIT_BRANCH}
fi
if [ "${app_type}" = "test" ]&& [ "${g_push}" == true ] ; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_TEST_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    source .biz9_config.sh
    BIZ9_VERSION=${BIZ9_TEST_VERSION};
    git push -f ${GIT_REPO} ${BIZ9_GIT_BRANCH}
fi
if [ "${app_type}" = "scriptz" ]&& [ "${g_push}" == true ] ; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_SCRIPTZ_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    source .biz9_config.sh
    BIZ9_VERSION=${BIZ9_SCRIPTZ_VERSION};
    git push -f ${GIT_REPO} ${BIZ9_GIT_BRANCH}
fi
if [ "${app_type}" = "core" ]&& [ "${g_push}" == true ] ; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_CORE_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    source .biz9_config.sh
    BIZ9_VERSION=${BIZ9_CORE_VERSION};
    git push -f ${GIT_REPO} ${BIZ9_GIT_BRANCH}
fi
if [ "${app_type}" = "vendor" ]&& [ "${g_push}" == true ] ; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_VENDOR_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    source .biz9_config.sh
    BIZ9_VERSION=${BIZ9_VENDOR_VERSION};
    git push -f ${GIT_REPO} ${BIZ9_GIT_BRANCH}
fi
if [ "${app_type}" = "vendor-payment" ]&& [ "${g_push}" == true ] ; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_VENDOR_PAYMENT_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    source .biz9_config.sh
    BIZ9_VERSION=${$BIZ9_VENDOR_PAYMENT_VERSION};
    git push -f ${GIT_REPO} ${BIZ9_GIT_BRANCH}
fi
echo "----------------------------------"
echo "Framework Product: ${APP_TITLE}"
echo "Framework Version: ${BIZ9_VERSION}"
echo "Framework Branch: ${branch_dir}"
echo "Framework GIT Repo: ${GIT_REPO}"
echo "GIT Branch: ${BIZ9_GIT_BRANCH}"
echo "Done!"
echo "----------------------------------"
exit 1
