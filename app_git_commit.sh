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
echo 'Enter noteZ:'
read commit_notes
echo "Update framework version?"
read n
yes=$(echo $n | tr -s '[:upper:]' '[:lower:]')
if [[  "$n" = "yes"  ]] ; then
    APP_VERSION_NEW=$(INCREMENT_VERSION ${APP_VERSION});
else
    APP_VERSION_NEW=${APP_VERSION};
fi
G_HAS_APP=false;
sed -i "s/APP_VERSION=.*/APP_VERSION='${APP_VERSION_NEW}'/" .biz9_config.sh
#CMS
if [ "${APP_TITLE}" = "${BIZ9_CMS_TITLE}" ]; then
    G_HAS_APP=true;
    BIZ9_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_CMS_VERSION);
    sed -i "s/BIZ9_CMS_VERSION=.*/BIZ9_CMS_VERSION='${BIZ9_VERSION_NEW}'/" .biz9_config.sh
    sed -i "s/BIZ9_CMS_VERSION=.*/BIZ9_CMS_VERSION='${BIZ9_VERSION_NEW}'/" app.js
    echo "BIZ9-CMS NEW VERSION : ${BIZ9_VERSION_NEW}"
fi
#CORE
if [ "${APP_TITLE}" = "${BIZ9_CORE_TITLE}" ]; then
    BIZ9_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_CORE_VERSION);
    sed -i "s/BIZ9_CORE_VERSION=.*/BIZ9_CORE_VERSION='${BIZ9_VERSION_NEW}'/" .biz9_config.sh
    echo "BIZ9-CORE NEW VERSION : ${BIZ9_VERSION_NEW}"
fi
#Docz
if [ "${APP_TITLE}" = "${BIZ9_DOCZ_TITLE}" ]; then
    BIZ9_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_DOCZ_VERSION);
    sed -i "s/BIZ9_DOCZ_VERSION=.*/BIZ9_DOCZ_VERSION='${BIZ9_VERSION_NEW}'/" .biz9_config.sh
    echo "BIZ9-DOCZ NEW VERSION : ${BIZ9_VERSION_NEW}"
fi
#Mobile
if [ "${APP_TITLE}" = "${BIZ9_MOBILE_TITLE}" ]; then
    BIZ9_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_MOBILE_VERSION);
    sed -i "s/BIZ9_MOBILE_VERSION=.*/BIZ9_MOBILE_VERSION='${BIZ9_VERSION_NEW}'/" .biz9_config.sh
    sed -i "s/APP_VERSION=.*/APP_VERSION='${APP_VERSION_NEW}'/" www/scripts/biz_scriptz/config.js
    echo "BIZ9-Mobile NEW VERSION : ${BIZ9_VERSION_NEW}"
fi
#Scriptz
if [ "${APP_TITLE}" = "${BIZ9_SCRIPTZ_TITLE}" ]; then
    BIZ9_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_SCRIPTZ_VERSION);
    sed -i "s/BIZ9_SCRIPTZ_VERSION=.*/BIZ9_SCRIPTZ_VERSION='${BIZ9_VERSION_NEW}'/" .biz9_config.sh
    echo "BIZ9-Scriptz NEW VERSION : ${BIZ9_VERSION_NEW}"
fi
#Service
if [ "${APP_TITLE}" = "${BIZ9_SERVICE_TITLE}" ]; then
    G_HAS_APP=true;
    BIZ9_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_SERVICE_VERSION);
    sed -i "s/BIZ9_SERVICE_VERSION=.*/BIZ9_SERVICE_VERSION='${BIZ9_VERSION_NEW}'/" .biz9_config.sh
    echo "BIZ9-Service NEW VERSION : ${BIZ9_VERSION_NEW}"
fi
#Test
if [ "${APP_TITLE}" = "${BIZ9_TEST_TITLE}" ]; then
    BIZ9_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_TEST_VERSION);
    sed -i "s/BIZ9_TEST_VERSION=.*/BIZ9_TEST_VERSION='${BIZ9_VERSION_NEW}'/" .biz9_config.sh
    echo "BIZ9-Test NEW VERSION : ${BIZ9_VERSION_NEW}"
fi
#Web
if [ "${APP_TITLE}" = "${BIZ9_WEB_TITLE}" ]; then
    G_HAS_APP=true;
    BIZ9_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_WEB_VERSION);
    sed -i "s/BIZ9_WEB_VERSION=.*/BIZ9_WEB_VERSION='${BIZ9_VERSION_NEW}'/" .biz9_config.sh
    echo "BIZ9-Web NEW VERSION : ${BIZ9_VERSION_NEW}"
fi

if [ "${G_HAS_APP}" = true ]; then
    sed -i "s/APP_VERSION=.*/APP_VERSION='${APP_VERSION_NEW}'/" app.js
fi

git add -A .
git commit -m  "${commit_notes}"
echo "----------------------------------"
echo "Project ID: ${PROJECT_ID}"
echo "APP Title: ${APP_TITLE}"
echo "APP Title ID: ${APP_TITLE_ID}"
echo "APP New Version: ${BIZ9_VERSION_NEW}"
echo "Branch: ${branch_dir}"
echo "Commit Notes: ${commit_notes}"
echo "Done!"
exit
