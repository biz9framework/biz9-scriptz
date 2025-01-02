# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : GIT Reset Init
source biz9_config
echo "#################"
echo "BiZ9 Framework GIT Reset Init"
echo "#################"
bash node_modules/biz9-scriptz/scriptz/view_git_sub_header.sh
rm -rf .git
git init
git checkout -b main
bash node_modules/biz9-scriptz/scriptz/view_footer.sh
exit