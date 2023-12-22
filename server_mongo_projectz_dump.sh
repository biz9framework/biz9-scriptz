# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : Server Mongo ProjectZ Dump
source ./.biz9_config.sh
echo "#################"
echo "BiZ9 Server Mongo ProjectZ Dump"
echo "#################"
DB_DATE=$(date +%F@%H:%M)
echo ${DB_DATE}
echo ./db_box_backupz/${DB_DATE};
if [ ! -d ./db_box_backupz ]; then
  mkdir -p ./db_box_backupz;
fi
for line in "${PROJECT_LIST[@]}"
do
   if [ ! -d ./db_box_backupz/${line} ]; then
       mkdir ./db_box_backupz/${line};
   fi
   if [ ! -d ./db_box_backupz/${line}/{DB_DATE} ]; then
       mkdir ./db_box_backupz/${line}/${DB_DATE};
   fi
   echo ${line}
   mongodump --db ${line} --port ${MONGO_PORT} --out "./db_box_backupz/${line}/${DB_DATE}"
done
echo "----------------------------------"
echo "Project List: ${PROJECT_LIST}"
echo "Done!"
echo "----------------------------------"
exit 1
