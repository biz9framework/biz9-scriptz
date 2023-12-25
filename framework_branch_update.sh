# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : BiZ9 Framework Branch Update
echo "#################"
echo "BiZ9 Framework Branch Update"
echo "#################"
G_PROJECT_FOLDER="$HOME/www/projectz/"
#prod-start
echo "Enter BiZ9 Framework product: [cms, core, docz, mobile, scriptz, service, server, test, vendor, vendor-payment, website]"
read app_type
echo "Enter source branch: [unstable, testing, stable]"
read source_dir
echo "Enter destination branch: [unstable, testing, stable]"
read destination_dir
#prod-end
##test-start##
: '
app_type='scriptz'
source_dir='unstable'
destination_dir='stable'
'
##test-end##
if [ -z "${source_dir}" ]
then
    source_dir='unstable'
fi
if [ -z "${destination_dir}" ]
then
    destination_dir='testing'
fi
if [ "${app_type}" = "docz" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_DOCZ_TITLE,,}/src/${source_dir}
    cd ${BIZ9_HOME}/${BIZ9_DOCZ_TITLE,,}/src/
    echo ".biz9_backup" > .gitignore
    source ${destination_dir}/.biz9_config.sh
    BIZ9_VERSION=${BIZ9_DOCZ_VERSION};
    BIZ9_TITLE=${BIZ9_DOCZ_TITLE};
    #rm
    rm -rf ${destination_dir}/*
    #copy
    cp -rf ${source_dir}/* ${destination_dir}/
    #sed
    source ${source_dir}/.biz9_config.sh
    sed -i "s/BIZ9_DOCZ_VERSION=.*/BIZ9_DOCZ_VERSION='${BIZ9_DOCZ_VERSION}';/" ${destination_dir}/.biz9_config.sh
fi
if [ "${app_type}" = "website" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_WEBSITE_TITLE,,}/src/${source_dir}
    cd ${BIZ9_HOME}/${BIZ9_WEBSITE_TITLE,,}/src/
    source ${destination_dir}/.biz9_config.sh
    BIZ9_VERSION=${BIZ9_WEBSITE_VERSION};
    BIZ9_TITLE=${BIZ9_WEBSITE_TITLE};
    #rm
    rm -rf ${destination_dir}/*
    #copy
    cp -rf ${source_dir}/* ${destination_dir}/
    #sed
    source ${source_dir}/.biz9_config.sh
    sed -i "s/BIZ9_WEBSITE_VERSION=.*/BIZ9_WEBSITE_VERSION='${BIZ9_WEBSITE_VERSION}';/" ${destination_dir}/.biz9_config.sh
    sed -i "s/BIZ9_WEBSITE_VERSION=.*/BIZ9_WEBSITE_VERSION='${BIZ9_WEBSITE_VERSION}';/" ${destination_dir}/app.js
fi
if [ "${app_type}" = "service" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_SERVICE_TITLE,,}/src/${source_dir}
    cd ${BIZ9_HOME}/${BIZ9_SERVICE_TITLE,,}/src/
    source ${destination_dir}/.biz9_config.sh
    BIZ9_VERSION=${BIZ9_SERVICE_VERSION};
    BIZ9_TITLE=${BIZ9_SERVICE_TITLE};
    #rm
    rm -rf ${destination_dir}/*
    #copy
    cp -rf ${source_dir}/* ${destination_dir}/
    #sed
    source ${source_dir}/.biz9_config.sh
    sed -i "s/BIZ9_SERVICE_VERSION=.*/BIZ9_SERVICE_VERSION='${BIZ9_SERVICE_VERSION}';/" ${destination_dir}/.biz9_config.sh
    sed -i "s/BIZ9_SERVICE_VERSION=.*/BIZ9_SERVICE_VERSION='${BIZ9_SERVICE_VERSION}';/" ${destination_dir}/app.js
fi
if [ "${app_type}" = "server" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_SERVER_TITLE,,}/src/${source_dir}
    cd ${BIZ9_HOME}/${BIZ9_SERVER_TITLE,,}/src/
    source ${destination_dir}/.biz9_config.sh
    BIZ9_VERSION=${BIZ9_SERVER_VERSION};
    BIZ9_TITLE=${BIZ9_SERVER_TITLE};
    #rm
    rm -rf ${destination_dir}/*
    #copy
    cp -rf ${source_dir}/* ${destination_dir}/
    #sed
    source ${source_dir}/.biz9_config.sh
    sed -i "s/BIZ9_SERVER_VERSION=.*/BIZ9_SERVER_VERSION='${BIZ9_SERVER_VERSION}';/" ${destination_dir}/.biz9_config.sh
fi
if [ "${app_type}" = "cms" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_CMS_TITLE,,}/src/${source_dir}
    cd ${BIZ9_HOME}/${BIZ9_CMS_TITLE,,}/src/
    source ${destination_dir}/.biz9_config.sh
    BIZ9_VERSION=${BIZ9_CMS_VERSION};
    BIZ9_TITLE=${BIZ9_CMS_TITLE};
    #rm
    rm -rf ${destination_dir}/*
    #copy
    cp -rf ${source_dir}/* ${destination_dir}/
    #sed
    source ${source_dir}/.biz9_config.sh
    sed -i "s/BIZ9_CMS_VERSION=.*/BIZ9_CMS_VERSION='${BIZ9_CMS_VERSION}';/" ${destination_dir}/.biz9_config.sh
    sed -i "s/BIZ9_CMS_VERSION=.*/BIZ9_CMS_VERSION='${BIZ9_CMS_VERSION}';/" ${destination_dir}/app.js
fi
if [ "${app_type}" = "mobile" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_MOBILE_TITLE,,}/src/${source_dir}
    cd ${BIZ9_HOME}/${BIZ9_MOBILE_TITLE,,}/src/
    source ${destination_dir}/.biz9_config.sh
    BIZ9_VERSION=${BIZ9_MOBILE_VERSION};
    BIZ9_TITLE=${BIZ9_MOBILE_TITLE};
    #rm
    rm -rf ${destination_dir}/*
    #copy
    cp -rf ${source_dir}/* ${destination_dir}/
    #sed
    source ${source_dir}/.biz9_config.sh
    sed -i "s/BIZ9_MOBILE_VERSION=.*/BIZ9_MOBILE_VERSION='${BIZ9_MOBILE_VERSION}';/" ${destination_dir}/.biz9_config.sh
    sed -i "s/BIZ9_MOBILE_VERSION=.*/BIZ9_MOBILE_VERSION='${BIZ9_MOBILE_VERSION}';/" ${destination_dir}/www/scripts/biz9-mobile/scriptz/config.js
fi
if [ "${app_type}" = "scriptz" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_SCRIPTZ_TITLE,,}/src/${source_dir}
    cd ${BIZ9_HOME}/${BIZ9_SCRIPTZ_TITLE,,}/src/
    source ${destination_dir}/.biz9_config.sh
    BIZ9_VERSION=${BIZ9_SCRIPTZ_VERSION};
    BIZ9_TITLE=${BIZ9_SCRIPTZ_TITLE};
    #rm
    rm -rf ${destination_dir}/*
    #copy
    cp -rf ${source_dir}/* ${destination_dir}/
    #sed
    source ${source_dir}/.biz9_config.sh
    sed -i "s/BIZ9_SCRIPTZ_VERSION=.*/BIZ9_SCRIPTZ_VERSION='${BIZ9_SCRIPTZ_VERSION}';/" ${destination_dir}/.biz9_config.sh
fi
if [ "${app_type}" = "core" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_CORE_TITLE,,}/src/${source_dir}
    cd ${BIZ9_HOME}/${BIZ9_CORE_TITLE,,}/src/
    source ${destination_dir}/.biz9_config.sh
    BIZ9_VERSION=${BIZ9_CORE_VERSION};
    BIZ9_TITLE=${BIZ9_CORE_TITLE};
    #rm
    rm -rf ${destination_dir}/*
    #copy
    cp -rf ${source_dir}/* ${destination_dir}/
    #sed
    source ${source_dir}/.biz9_config.sh
    sed -i "s/BIZ9_CORE_VERSION=.*/BIZ9_CORE_VERSION='${BIZ9_CORE_VERSION}';/" ${destination_dir}/.biz9_config.sh
fi
if [ "${app_type}" = "test" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_TEST_TITLE,,}/src/${source_dir}
    cd ${BIZ9_HOME}/${BIZ9_TEST_TITLE,,}/src/
    source ${destination_dir}/.biz9_config.sh
    BIZ9_VERSION=${BIZ9_TEST_VERSION};
    BIZ9_TITLE=${BIZ9_TEST_TITLE};
    #rm
    rm -rf ${destination_dir}/*
    #copy
    cp -rf ${source_dir}/* ${destination_dir}/
    #sed
    source ${source_dir}/.biz9_config.sh
    sed -i "s/BIZ9_TEST_VERSION=.*/BIZ9_TEST_VERSION='${BIZ9_TEST_VERSION}';/" ${destination_dir}/.biz9_config.sh
fi
echo "----------------------------------"
echo "Framework Product: ${BIZ9_TITLE}"
echo "Framework Version: ${BIZ9_VERSION}"
echo "Done!"
echo "----------------------------------"
exit 1
