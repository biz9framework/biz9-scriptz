# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : BiZ9 Framework Git Commit
echo "#################"
echo "BiZ9 Framework GitHub Commit"
echo "#################"
INCREMENT_VERSION ()
{
    declare -a part=( ${1//\./ } )
    declare    new
    declare -i carry=1

    for (( CNTR=${#part[@]}-1; CNTR>=0; CNTR-=1 )); do
        len=${#part[CNTR]}
        new=$((part[CNTR]+carry))
        [ ${#new} -gt $len ] && carry=1 || carry=0
        [ $CNTR -gt 0 ] && part[CNTR]=${new: -len} || part[CNTR]=${new}
    done
    new="${part[*]}"
    echo -e "${new// /.}"
}
#prod-start
echo "Enter BiZ9 Framework product: [change-request, cms, core, help, mobile, scriptz, server, service, test, website]"
read app_type
echo "Enter branch: [unstable, testing, stable]"
read branch_dir
echo 'Enter notes:'
read commit_notes
#prod-end
##test-start##
: '
app_type="website"
branch_dir='stable'
commit_notes="Framework Update $(date +%F@%H:%M)"
'
##test-end##
#cms
if [ "${app_type}" = "cms" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_CMS_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    echo ".biz9_backup" > .gitignore
    source .biz9_config.sh
    BIZ9_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_CMS_VERSION);
    sed -i "s/APP_VERSION=.*/APP_VERSION='1.0.0'/" .biz9_config.sh
    sed -i "s/APP_VERSION=.*/APP_VERSION='1.0.0'/" app.js
    sed -i "s/BIZ9_CMS_VERSION=.*/BIZ9_CMS_VERSION='${BIZ9_VERSION_NEW}'/" .biz9_config.sh
    sed -i "s/BIZ9_CMS_VERSION=.*/BIZ9_CMS_VERSION='${BIZ9_VERSION_NEW}'/" app.js
    git add -A .
    git commit -m  "${commit_notes}"
  fi
#core
if [ "${app_type}" = "core" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_CORE_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    echo ".biz9_backup" > .gitignore
    source .biz9_config.sh
    BIZ9_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_CORE_VERSION);
    sed -i "s/APP_VERSION=.*/APP_VERSION='1.0.0'/" .biz9_config.sh
    sed -i "s/BIZ9_CORE_VERSION=.*/BIZ9_CORE_VERSION='${BIZ9_VERSION_NEW}'/" .biz9_config.sh
    git add -A .
    git commit -m  "${commit_notes}"
fi
#help
if [ "${app_type}" = "help" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_HELP_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    echo ".biz9_backup" > .gitignore
    source .biz9_config.sh
    BIZ9_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_HELP_VERSION);
    sed -i "s/APP_VERSION=.*/APP_VERSION='1.0.0'/" .biz9_config.sh
    sed -i "s/BIZ9_HELP_VERSION=.*/BIZ9_HELP_VERSION='${BIZ9_VERSION_NEW}'/" .biz9_config.sh
    git add -A .
    git commit -m  "${commit_notes}"
fi
#change-request
if [ "${app_type}" = "change-request" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_CHANGE_REQUEST_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    echo ".biz9_backup" > .gitignore
    source .biz9_config.sh
    BIZ9_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_CHANGE_REQUEST_VERSION);
    sed -i "s/APP_VERSION=.*/APP_VERSION='1.0.0'/" .biz9_config.sh
    sed -i "s/BIZ9_CHANGE_REQUEST_VERSION=.*/BIZ9_CHANGE_REQUEST_VERSION='${BIZ9_VERSION_NEW}'/" .biz9_config.sh
    git add -A .
    git commit -m  "${commit_notes}"
fi
#mobile
if [ "${app_type}" = "mobile" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_MOBILE_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    echo ".biz9_backup" > .gitignore
    source .biz9_config.sh
    BIZ9_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_MOBILE_VERSION);
    sed -i "s/APP_VERSION=.*/APP_VERSION='1.0.0'/" .biz9_config.sh
    sed -i "s/APP_VERSION=.*/APP_VERSION='1.0.0'/" www/scripts/biz9-mobile/scriptz/config.js
    sed -i "s/BIZ9_MOBILE_VERSION=.*/BIZ9_MOBILE_VERSION='${BIZ9_VERSION_NEW}'/" .biz9_config.sh
    sed -i "s/BIZ9_MOBILE_VERSION=.*/BIZ9_MOBILE_VERSION='${BIZ9_VERSION_NEW}'/" www/scripts/biz9-mobile/scriptz/config.js
    git add -A .
    git commit -m  "${commit_notes}"
fi
#scriptz
if [ "${app_type}" = "scriptz" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_SCRIPTZ_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    echo ".biz9_backup" > .gitignore
    source .biz9_config.sh
    BIZ9_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_SCRIPTZ_VERSION);
    sed -i "s/APP_VERSION=.*/APP_VERSION='1.0.0'/" .biz9_config.sh
    sed -i "s/BIZ9_SCRIPTZ_VERSION=.*/BIZ9_SCRIPTZ_VERSION='${BIZ9_VERSION_NEW}'/" .biz9_config.sh
    git add -A .
    git commit -m  "${commit_notes}"
fi
#service
if [ "${app_type}" = "service" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_SERVICE_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    echo ".biz9_backup" > .gitignore
    source .biz9_config.sh
    BIZ9_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_SERVICE_VERSION);
    sed -i "s/APP_VERSION=.*/APP_VERSION='1.0.0'/" .biz9_config.sh
    sed -i "s/APP_VERSION=.*/APP_VERSION='1.0.0'/" app.js
    sed -i "s/BIZ9_SERVICE_VERSION=.*/BIZ9_SERVICE_VERSION='${BIZ9_VERSION_NEW}'/" .biz9_config.sh
    sed -i "s/BIZ9_SERVICE_VERSION=.*/BIZ9_SERVICE_VERSION='${BIZ9_VERSION_NEW}'/" app.js
    git add -A .
    git commit -m  "${commit_notes}"
fi
#test
if [ "${app_type}" = "test" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_TEST_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    echo ".biz9_backup" > .gitignore
    source .biz9_config.sh
    BIZ9_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_TEST_VERSION);
    sed -i "s/APP_VERSION=.*/APP_VERSION='1.0.0'/" .biz9_config.sh
    sed -i "s/BIZ9_TEST_VERSION=.*/BIZ9_TEST_VERSION='${BIZ9_VERSION_NEW}'/" .biz9_config.sh
    git add -A .
    git commit -m  "${commit_notes}"
fi
#website
if [ "${app_type}" = "website" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_WEBSITE_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    echo ".biz9_backup" > .gitignore
    source .biz9_config.sh
    BIZ9_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_WEBSITE_VERSION);
    sed -i "s/APP_VERSION=.*/APP_VERSION='1.0.0'/" .biz9_config.sh
    sed -i "s/APP_VERSION=.*/APP_VERSION='1.0.0'/" app.js
    sed -i "s/BIZ9_WEBSITE_VERSION=.*/BIZ9_WEBSITE_VERSION='${BIZ9_VERSION_NEW}'/" .biz9_config.sh
    sed -i "s/BIZ9_WEBSITE_VERSION=.*/BIZ9_WEBSITE_VERSION='${BIZ9_VERSION_NEW}'/" app.js
    git add -A .
    git commit -m  "${commit_notes}"
fi
#server
if [ "${app_type}" = "server" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_SERVER_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    echo ".biz9_backup" > .gitignore
    source .biz9_config.sh
    BIZ9_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_SERVER_VERSION);
    sed -i "s/APP_VERSION=.*/APP_VERSION='1.0.0'/" .biz9_config.sh
    sed -i "s/BIZ9_SERVER_VERSION=.*/BIZ9_SERVER_VERSION='${BIZ9_VERSION_NEW}'/" .biz9_config.sh
    git add -A .
    git commit -m  "${commit_notes}"
fi
echo "----------------------------------"
echo "Framework Product: ${APP_TITLE}"
echo "Framework Version: ${BIZ9_VERSION_NEW}"
echo "Framework Branch: ${branch_dir}"
echo "Framework GIT Repo: ${GIT_REPO}"
echo "GIT Branch: ${BIZ9_GIT_BRANCH}"
echo "Commit Notes: ${commit_notes}"
echo "Done!"
echo "----------------------------------"
exit 1
