# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : Git Branch List
source biz9_config
echo "#################"
echo "BiZ9 Framework Git Branch List"
echo "#################"
bash ${BIZ9_SCRIPTZ_DIRECTORY}view_git_sub_header.sh
git branch
bash ${BIZ9_SCRIPTZ_DIRECTORY}view_footer.sh
exit
