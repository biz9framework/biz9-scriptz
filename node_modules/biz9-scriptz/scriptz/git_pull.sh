# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : Git Pull
source biz9_config
echo "#################"
echo "BiZ9 Framework Git Pull"
echo "#################"
bash node_modules/biz9-scriptz/scriptz/view_git_sub_header.sh

git pull ${REPO}

bash node_modules/biz9-scriptz/scriptz/view_footer.sh
exit
