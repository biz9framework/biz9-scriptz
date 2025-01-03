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
echo 'App Info'
echo '---'
echo "Title: " ${TITLE};
echo "App Title ID: " ${APP_TITLE_ID};
echo "Project ID: " ${PROJECT_ID};
echo "Port ID: " ${PORT_ID};
bash ${BIZ9_SCRIPTZ_DIRECTORY}view_footer.sh
exit
