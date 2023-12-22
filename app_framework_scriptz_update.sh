# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : App Framework ScriptZ Update
echo "#################"
echo "BiZ9 App Framework ScriptZ Update"
echo "#################"
echo "Enter Project-ID"
read project_id
echo "Enter Directory"
read folder_id
G_BIZ_SCRIPT_FOLDER="${BIZ9_HOME}/biz9-scriptz/src/stable"
G_BIZ_APP_DIR=${BIZ9_PROJECT_DIRECTORY}${project_id}/${folder_id}
rm -rf ${G_BIZ_APP_DIR}/scriptz
cp -rf ${G_BIZ_SCRIPT_FOLDER}  ${G_BIZ_APP_DIR}/scriptz
rm -rf ${G_BIZ_APP_DIR}/scriptz/.biz9_config.sh
rm -rf ${G_BIZ_APP_DIR}/scriptz/.git
rm -rf ${G_BIZ_APP_DIR}/scriptz/.gitignore
echo "----------------------------------"
echo "Done!"
echo "----------------------------------"
exit
