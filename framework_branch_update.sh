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
    echo 'Tool: BiZ9-DocZ';
    echo Destination ${destination_dir}: Version: ${BIZ9_DOCZ_VERSION};
    #rm
    rm -rf ${destination_dir}/*
    #copy
    cp -rf ${source_dir}/* ${destination_dir}/
    #sed
    source ${source_dir}/.biz9_config.sh
    sed -i "s/BIZ9_DOCZ_VERSION=.*/BIZ9_DOCZ_VERSION='${BIZ9_DOCZ_VERSION}';/" ${destination_dir}/.biz9_config.sh
    echo Source ${source_dir}: Version: ${BIZ9_DOCZ_VERSION};
fi
if [ "${app_type}" = "website" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_WEBSITE_TITLE,,}/src/${source_dir}
    cd ${BIZ9_HOME}/${BIZ9_WEBSITE_TITLE,,}/src/
    source ${destination_dir}/.biz9_config.sh
    echo 'Tool: BiZ9-Website';
    echo Destination ${destination_dir}: Version: ${BIZ9_WEBSITE_VERSION};
    #rm
    rm -rf ${destination_dir}/*
    #copy
    cp -rf ${source_dir}/* ${destination_dir}/
    #sed
    source ${source_dir}/.biz9_config.sh
    sed -i "s/BIZ9_WEBSITE_VERSION=.*/BIZ9_WEBSITE_VERSION='${BIZ9_WEBSITE_VERSION}';/" ${destination_dir}/.biz9_config.sh
    sed -i "s/BIZ9_WEBSITE_VERSION=.*/BIZ9_WEBSITE_VERSION='${BIZ9_WEBSITE_VERSION}';/" ${destination_dir}/app.js
    echo Source ${source_dir}: Version: ${BIZ9_WEBSITE_VERSION};
fi
if [ "${app_type}" = "service" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_SERVICE_TITLE,,}/src/${source_dir}
    cd ${BIZ9_HOME}/${BIZ9_SERVICE_TITLE,,}/src/
    source ${destination_dir}/.biz9_config.sh
    echo 'Tool: BiZ9-Service';
    echo Destination ${destination_dir}: Version: ${BIZ9_SERVICE_VERSION};
    #rm
    rm -rf ${destination_dir}/*
    #copy
    cp -rf ${source_dir}/* ${destination_dir}/
    #sed
    source ${source_dir}/.biz9_config.sh
    sed -i "s/BIZ9_SERVICE_VERSION=.*/BIZ9_SERVICE_VERSION='${BIZ9_SERVICE_VERSION}';/" ${destination_dir}/.biz9_config.sh
    sed -i "s/BIZ9_SERVICE_VERSION=.*/BIZ9_SERVICE_VERSION='${BIZ9_SERVICE_VERSION}';/" ${destination_dir}/app.js
    echo Source ${source_dir}: Version: ${BIZ9_SERVICE_VERSION};
fi
if [ "${app_type}" = "server" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_SERVER_TITLE,,}/src/${source_dir}
    cd ${BIZ9_HOME}/${BIZ9_SERVER_TITLE,,}/src/
    source ${destination_dir}/.biz9_config.sh
    echo 'Tool: BiZ9-Server';
    echo Destination ${destination_dir}: Version: ${BIZ9_SERVER_VERSION};
    #rm
    rm -rf ${destination_dir}/*
    #copy
    cp -rf ${source_dir}/* ${destination_dir}/
    #sed
    source ${source_dir}/.biz9_config.sh
    sed -i "s/BIZ9_SERVER_VERSION=.*/BIZ9_SERVER_VERSION='${BIZ9_SERVER_VERSION}';/" ${destination_dir}/.biz9_config.sh
    echo Source ${source_dir}: Version: ${BIZ9_SERVER_VERSION};
fi
if [ "${app_type}" = "cms" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_CMS_TITLE,,}/src/${source_dir}
    cd ${BIZ9_HOME}/${BIZ9_CMS_TITLE,,}/src/
    source ${destination_dir}/.biz9_config.sh
    echo 'Tool: BiZ9-CMS';
    echo Destination ${destination_dir}: Version: ${BIZ9_CMS_VERSION};
    #rm
    rm -rf ${destination_dir}/*
    #copy
    cp -rf ${source_dir}/* ${destination_dir}/
    #sed
    source ${source_dir}/.biz9_config.sh
    sed -i "s/BIZ9_CMS_VERSION=.*/BIZ9_CMS_VERSION='${BIZ9_CMS_VERSION}';/" ${destination_dir}/.biz9_config.sh
    sed -i "s/BIZ9_CMS_VERSION=.*/BIZ9_CMS_VERSION='${BIZ9_CMS_VERSION}';/" ${destination_dir}/app.js
    echo Source ${source_dir}: Version: ${BIZ9_CMS_VERSION};
fi
if [ "${app_type}" = "mobile" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_MOBILE_TITLE,,}/src/${source_dir}
    cd ${BIZ9_HOME}/${BIZ9_MOBILE_TITLE,,}/src/
    source ${destination_dir}/.biz9_config.sh
    echo 'Tool: BiZ9-Mobile';
    echo Destination ${destination_dir}: Version: ${BIZ9_MOBILE_VERSION};
    #rm
    rm -rf ${destination_dir}/*
    #copy
    cp -rf ${source_dir}/* ${destination_dir}/
    #sed
    source ${source_dir}/.biz9_config.sh
    sed -i "s/BIZ9_MOBILE_VERSION=.*/BIZ9_MOBILE_VERSION='${BIZ9_MOBILE_VERSION}';/" ${destination_dir}/.biz9_config.sh
    sed -i "s/BIZ9_MOBILE_VERSION=.*/BIZ9_MOBILE_VERSION='${BIZ9_MOBILE_VERSION}';/" ${destination_dir}/www/scripts/biz_scriptz/config.js
    echo Source ${source_dir}: Version: ${BIZ9_MOBILE_VERSION};
fi
if [ "${app_type}" = "scriptz" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_SCRIPTZ_TITLE,,}/src/${source_dir}
    cd ${BIZ9_HOME}/${BIZ9_SCRIPTZ_TITLE,,}/src/
    source ${destination_dir}/.biz9_config.sh
    echo 'Tool: BiZ9-Scriptz';
    echo Destination ${destination_dir}: Version: ${BIZ9_SCRIPTZ_VERSION};
    #rm
    rm -rf ${destination_dir}/*
    #copy
    cp -rf ${source_dir}/* ${destination_dir}/
    #sed
    source ${source_dir}/.biz9_config.sh
    sed -i "s/BIZ9_SCRIPTZ_VERSION=.*/BIZ9_SCRIPTZ_VERSION='${BIZ9_SCRIPTZ_VERSION}';/" ${destination_dir}/.biz9_config.sh
    echo Source ${source_dir}: Version: ${BIZ9_SCRIPTZ_VERSION};
fi
if [ "${app_type}" = "core" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_CORE_TITLE,,}/src/${source_dir}
    cd ${BIZ9_HOME}/${BIZ9_CORE_TITLE,,}/src/
    source ${destination_dir}/.biz9_config.sh
    echo 'Tool: BiZ9-Core';
    echo Destination ${destination_dir}: Version: ${BIZ9_CORE_VERSION};
    #rm
    rm -rf ${destination_dir}/*
    #copy
    cp -rf ${source_dir}/* ${destination_dir}/
    #sed
    source ${source_dir}/.biz9_config.sh
    sed -i "s/BIZ9_CORE_VERSION=.*/BIZ9_CORE_VERSION='${BIZ9_CORE_VERSION}';/" ${destination_dir}/.biz9_config.sh
    echo Source ${source_dir}: Version: ${BIZ9_CORE_VERSION};
fi
if [ "${app_type}" = "test" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_TEST_TITLE,,}/src/${source_dir}
    cd ${BIZ9_HOME}/${BIZ9_TEST_TITLE,,}/src/
    source ${destination_dir}/.biz9_config.sh
    echo 'Tool: BiZ9-Test';
    echo Destination ${destination_dir}: Version: ${BIZ9_TEST_VERSION};
    #rm
    rm -rf ${destination_dir}/*
    #copy
    cp -rf ${source_dir}/* ${destination_dir}/
    #sed
    source ${source_dir}/.biz9_config.sh
    sed -i "s/BIZ9_TEST_VERSION=.*/BIZ9_TEST_VERSION='${BIZ9_TEST_VERSION}';/" ${destination_dir}/.biz9_config.sh
    echo Source ${source_dir}: Version: ${BIZ9_TEST_VERSION};
fi
if [ "${app_type}" = "vendor" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_VENDOR_TITLE,,}/src/${source_dir}
    cd ${BIZ9_HOME}/${BIZ9_VENDOR_TITLE,,}/src/
    source ${destination_dir}/.biz9_config.sh
    echo 'Tool: BiZ9-Vendor';
    echo Destination ${destination_dir}: Version: ${BIZ9_VENDOR_VERSION};
    #rm
    rm -rf ${destination_dir}/*
    #copy
    cp -rf ${source_dir}/* ${destination_dir}/
    #sed
    source ${source_dir}/.biz9_config.sh
    sed -i "s/BIZ9_VENDOR_VERSION=.*/BIZ9_VENDOR_VERSION='${BIZ9_VENDOR_VERSION}';/" ${destination_dir}/.biz9_config.sh
    sed -i "s/BIZ9_VENDOR_VERSION=.*/BIZ9_VENDOR_VERSION='${BIZ9_VENDOR_VERSION}';/" ${destination_dir}/app.js
    echo Source ${source_dir}: Version: ${BIZ9_VENDOR_VERSION};
fi
if [ "${app_type}" = "vendor-payment" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_VENDOR_PAYMENT_TITLE,,}/src/${source_dir}
    cd ${BIZ9_HOME}/${BIZ9_VENDOR_PAYMENT_TITLE,,}/src/
    source ${destination_dir}/.biz9_config.sh
    echo 'Tool: BiZ9-Vendor-Payment';
    echo Destination ${destination_dir}: Version: ${BIZ9_VENDOR_PAYMENT_VERSION};
    #rm
    rm -rf ${destination_dir}/*
    #copy
    cp -rf ${source_dir}/* ${destination_dir}/
    #sed
    source ${source_dir}/.biz9_config.sh
    sed -i "s/BIZ9_VENDOR_PAYMENT_VERSION=.*/BIZ9_VENDOR_PAYMENT_VERSION='${BIZ9_VENDOR_PAYMENT_VERSION}';/" ${destination_dir}/.biz9_config.sh
    sed -i "s/BIZ9_VENDOR_PAYMENT_VERSION=.*/BIZ9_VENDOR_PAYMENT_VERSION='${BIZ9_VENDOR_PAYMENT_VERSION}';/" ${destination_dir}/app.js
    echo Source ${source_dir}: Version: ${BIZ9_VENDOR_PAYMENT_VERSION};
fi
echo "----------------------------------"
echo "Done!"
echo "----------------------------------"
exit 1
