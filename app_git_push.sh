# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : App Git Push
source ./.biz9_config.sh
echo "#################"
echo "BiZ9 App Git Push"
echo "#################"
echo "Are you sure you want to push?"
read n
yes=$(echo $n | tr -s '[:upper:]' '[:lower:]')
if [[  "$n" = "yes"  ]] ; then
    ##
    git push -f ${REPO_URL} ${GIT_BRANCH}
    else
    echo "exit"
fi
echo "----------------------------------"
echo "Project ID: ${PROJECT_ID}"
echo "APP Title: ${APP_TITLE}"
echo "APP Title ID: ${APP_TITLE_ID}"
echo "APP Version: ${APP_VERSION}"
echo "Done!"
echo "----------------------------------"
exit
