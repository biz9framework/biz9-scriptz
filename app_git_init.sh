# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : App Git Init
source ./.biz9_config.sh
echo "#################"
echo "BiZ9 App Git Init"
echo "#################"
git init
git checkout -b ${GIT_BRANCH}
#git branch --show-current
echo "----------------------------------"
echo "Git Branch: ${git_branch}"
echo "Project ID: ${PROJECT_ID}"
echo "APP Title: ${APP_TITLE}"
echo "APP Title ID: ${APP_TITLE_ID}"
echo "APP Version: ${APP_VERSION}"
echo "Done!"
echo "----------------------------------"
exit
