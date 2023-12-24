# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : App Git Commit
source ./.biz9_config.sh
echo "#################"
echo "BiZ9 App Git Commit"
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
echo 'Enter notes:'
read commit_notes
APP_VERSION_NEW=$(INCREMENT_VERSION ${APP_VERSION});
sed -i "s/APP_VERSION=.*/APP_VERSION='${APP_VERSION_NEW}'/" .biz9_config.sh
#cms
if [ "${APP_TITLE}" = "${BIZ9_CMS_TITLE}" ]; then
    FRAMEWORK_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_CMS_VERSION);
    FRAMEWORK_TITLE=${BIZ9_CMS_TITLE};
    sed -i "s/APP_VERSION=.*/APP_VERSION='${APP_VERSION_NEW}'/" .biz9_config.sh
    sed -i "s/APP_VERSION=.*/APP_VERSION='${APP_VERSION_NEW}'/" app.js
    sed -i "s/BIZ9_CMS_VERSION=.*/BIZ9_CMS_VERSION='${FRAMEWORK_VERSION_NEW}'/" .biz9_config.sh
    sed -i "s/BIZ9_CMS_VERSION=.*/BIZ9_CMS_VERSION='${FRAMEWORK_VERSION_NEW}'/" app.js
fi
#website
if [ "${APP_TITLE}" = "${BIZ9_WEBSITE_TITLE}" ]; then
    FRAMEWORK_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_WEBSITE_VERSION);
    FRAMEWORK_TITLE=${BIZ9_WEBSITE_TITLE};
    sed -i "s/APP_VERSION=.*/APP_VERSION='${APP_VERSION_NEW}'/" .biz9_config.sh
    sed -i "s/APP_VERSION=.*/APP_VERSION='${APP_VERSION_NEW}'/" app.js
    sed -i "s/BIZ9_WEBSITE_VERSION=.*/BIZ9_WEBSITE_VERSION='${FRAMEWORK_VERSION_NEW}'/" .biz9_config.sh
    sed -i "s/BIZ9_WEBSITE_VERSION=.*/BIZ9_WEBSITE_VERSION='${FRAMEWORK_VERSION_NEW}'/" app.js
fi
#core
if [ "${APP_TITLE}" = "${BIZ9_CORE_TITLE}" ]; then
    FRAMEWORK_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_CORE_VERSION);
    FRAMEWORK_TITLE=${BIZ9_CORE_TITLE};
    sed -i "s/BIZ9_CORE_VERSION=.*/BIZ9_CORE_VERSION='${FRAMEWORK_VERSION_NEW}'/" .biz9_config.sh
fi
#docz
if [ "${APP_TITLE}" = "${BIZ9_DOCZ_TITLE}" ]; then
    FRAMEWORK_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_DOCZ_VERSION);
    FRAMEWORK_TITLE=${BIZ9_DOCZ_TITLE};
    sed -i "s/APP_VERSION=.*/APP_VERSION='${APP_VERSION_NEW}'/" .biz9_config.sh
    sed -i "s/APP_VERSION=.*/APP_VERSION='${APP_VERSION_NEW}'/" app.js
    sed -i "s/BIZ9_DOCZ_VERSION=.*/BIZ9_DOCZ_VERSION='${FRAMEWORK_VERSION_NEW}'/" .biz9_config.sh
    sed -i "s/BIZ9_DOCZ_VERSION=.*/BIZ9_DOCZ_VERSION='${FRAMEWORK_VERSION_NEW}'/" app.js
fi
#mobile
if [ "${APP_TITLE}" = "${BIZ9_MOBILE_TITLE}" ]; then
    FRAMEWORK_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_MOBILE_VERSION);
    FRAMEWORK_TITLE=${BIZ9_MOBILE_TITLE};
    sed -i "s/APP_VERSION=.*/APP_VERSION='${APP_VERSION_NEW}'/" .biz9_config.sh
    sed -i "s/APP_VERSION=.*/APP_VERSION='${APP_VERSION_NEW}'/" app.js
    sed -i "s/BIZ9_MOBILE_VERSION=.*/BIZ9_MOBILE_VERSION='${FRAMEWORK_VERSION_NEW}'/" .biz9_config.sh
    sed -i "s/BIZ9_MOBILE_VERSION=.*/BIZ9_MOBILE_VERSION='${FRAMEWORK_VERSION_NEW}'/" app.js
fi
#SCRIPTZ
if [ "${APP_TITLE}" = "${BIZ9_SCRIPTZ_TITLE}" ]; then
    FRAMEWORK_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_SCRIPTZ_VERSION);
    FRAMEWORK_TITLE=${BIZ9_SCRIPTZ_TITLE};
    sed -i "s/APP_VERSION=.*/APP_VERSION='${APP_VERSION_NEW}'/" .biz9_config.sh
    sed -i "s/BIZ9_SCRIPTZ_VERSION=.*/BIZ9_SCRIPTZ_VERSION='${FRAMEWORK_VERSION_NEW}'/" .biz9_config.sh
fi
#service
if [ "${APP_TITLE}" = "${BIZ9_SERVICE_TITLE}" ]; then
    FRAMEWORK_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_SERVICE_VERSION);
    FRAMEWORK_TITLE=${BIZ9_SERVICE_TITLE};
    sed -i "s/APP_VERSION=.*/APP_VERSION='${APP_VERSION_NEW}'/" .biz9_config.sh
    sed -i "s/APP_VERSION=.*/APP_VERSION='${APP_VERSION_NEW}'/" app.js
    sed -i "s/BIZ9_SERVICE_VERSION=.*/BIZ9_SERVICE_VERSION='${FRAMEWORK_VERSION_NEW}'/" .biz9_config.sh
    sed -i "s/BIZ9_SERVICE_VERSION=.*/BIZ9_SERVICE_VERSION='${FRAMEWORK_VERSION_NEW}'/" app.js
fi
#test
if [ "${APP_TITLE}" = "${BIZ9_TEST_TITLE}" ]; then
    FRAMEWORK_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_TEST_VERSION);
    FRAMEWORK_TITLE=${BIZ9_TEST_TITLE};
    sed -i "s/BIZ9_TEST_VERSION=.*/BIZ9_TEST_VERSION='${FRAMEWORK_VERSION_NEW}'/" .biz9_config.sh
fi
git add -A .
git commit -m  "${commit_notes}"
echo "----------------------------------"
echo "Framework Product: ${FRAMEWORK_TITLE}"
echo "Framework Version: ${FRAMEWORK_VERSION_NEW}"
echo "Project-ID: ${PROJECT_ID}"
echo "App Title: ${APP_TITLE}"
echo "App-Title-ID: ${APP_TITLE_ID}"
echo "App Version: ${APP_VERSION_NEW}"
echo "Commit Notes: ${commit_notes}"
echo "Done!"
exit
