# Copyright 2016 Certified CoderZ
# Author: Brandon Poole Sr. (biz9framework@gmail.com)
# License GNU General Public License v3.0
# Description: BiZ9 Framework : App Info
source biz9_config
echo "#################"
echo "BiZ9 Framework App Info"
echo "#################"
echo '__________________________ APP-INFO-STAT _________________________________________';
echo "Title: " ${TITLE};
echo "Version: " ${VERSION};

if [[ -n "$APP_ID" ]]; then
echo "App ID: " ${APP_ID};
fi

if [[ -n "$PROJECT_ID" ]]; then
echo "Project ID: " ${PROJECT_ID};
fi

if [[ -n "$PORT_ID" ]]; then
echo "Port ID: " ${PORT_ID};
fi

echo '__________________________ Git-INFO-START _________________________________________';
if [[ -n "$PORT_ID" ]]; then
echo "Repo: " ${REPO};
fi
if [[ -n "$BRANCH" ]]; then
echo "Branch: " ${BRANCH};
fi

bash ${BIZ9_SCRIPTZ_DIRECTORY}view_footer.sh
exit
