# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : App Mongo Restore
source ./.biz9_config.sh
echo "#################"
echo "BiZ9 App Mongo Restore"
echo "#################"
#DB_DATE=`date +%d%b%Y`
echo 'Enter Date:'
read db_date;
echo 'Enter App Title ID:'
read app_title_id;
echo 'Enter Mongo Port:'
read mongo_port;
DB_DIR=db/backup/${db_date}
cd ${db_date}
mongorestore --db ${app_title_id} --port ${mongo_port} --drop dump/${app_title_id}
echo "----------------------------------"
echo "Date: ${DB_DATE}"
echo "App-Title-ID: ${app_title_id}"
echo "Mongo Port: ${mongo_port}"
echo "Done!"
echo "----------------------------------"
exit 1
