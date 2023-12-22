# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : App Mongo Dump
source ./.biz9_config.sh
echo "#################"
echo "BiZ9 App Mongo Dump"
echo "#################"
DB_DATE=`date +%m-%d-%Y`
echo ${DB_DATE}
DB_DIR=db/backup/${DB_DATE}
mkdir -p ${DB_DIR}
cd ${DB_DIR}
mongodump --db ${APP_TITLE_ID} --port ${MONGO_PORT}
cd ../../../
echo "----------------------------------"
echo "Project ID: ${PROJECT_ID}"
echo "APP Title: ${APP_TITLE}"
echo "APP Title ID: ${APP_TITLE_ID}"
echo "APP Version: ${APP_VERSION}"
echo "Done!"
echo "----------------------------------"
exit 1

