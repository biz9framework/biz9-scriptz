# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : App Info
source biz9_config
echo "#################"
echo "BiZ9 Framework App Info"
echo "#################"
bash ${BIZ9_SCRIPTZ_DIRECTORY}view_git_sub_header.sh
echo '------------'
echo '-- App Info Statt --'
echo "Title: " ${TITLE};
echo "Version: " ${VERSION};
echo "App Title ID: " ${APP_TITLE_ID};
echo "Project ID: " ${PROJECT_ID};
echo "Port ID: " ${PORT_ID};
echo '-- App Info End --'
echo '-- Git Info Start --'
echo "Repo: " ${REPO};
echo "Branch: " ${BRANCH};
echo '-- Git Info End --'
echo "-- MongoDB Start --";
echo "Mongo IP: " ${MONGO_IP};
echo "Mongo Username Password: " ${MONGO_USERNAME_PASSWORD};
echo "Mongo Port ID: " ${MONGO_PORT_ID};
echo "Mongo Server User: " ${MONGO_SERVER_USER};
echo "Mongo Config File: " ${MONGO_CONFIG_PATH};
echo "SSH Key: " ${SSH_KEY};
echo "-- MongoDB End --";
bash ${BIZ9_SCRIPTZ_DIRECTORY}view_footer.sh
exit
