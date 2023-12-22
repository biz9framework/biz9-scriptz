# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : App Server Deploy
source ./.biz9_config.sh
echo '##############'
echo 'BiZ9 App Server Deploy'
echo '##############'

SSH_KEY_DIR=other/server/ssh_key

echo "Are you sure you want to deploy?"
read n
yes=$(echo $n | tr -s '[:upper:]' '[:lower:]')
if [[  "$n" = "yes"  ]] ; then
        rsync -rave "ssh -2 -i ${SSH_KEY}" . admin@${SERVER_IP}:${SERVER_DEPLOY_DIR} --exclude .git --exclude other
fi
echo "----------------------------------"
echo "Project ID: ${PROJECT_ID}"
echo "APP Title: ${APP_TITLE}"
echo "APP Title ID: ${APP_TITLE_ID}"
echo "APP Version: ${APP_VERSION}"
echo "SERVER IP: ${SERVER_IP}"
echo "SERVER DEPLOY DIR: ${SERVER_DEPLOY_DIR}"
echo "SSH_KEY: ${SSH_KEY}"
echo "Done!"
echo "----------------------------------"
exit 1
