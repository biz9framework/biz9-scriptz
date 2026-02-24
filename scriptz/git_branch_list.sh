# Copyright 2016 Certified CoderZ
# Author: Brandon Poole Sr. (biz9framework@gmail.com)
# License GNU General Public License v3.0
# Description: BiZ9 Framework : Git Branch List
source biz9_config
echo "#################"
echo "BiZ9 Framework Git Branch List"
echo "#################"
bash ${BIZ9_SCRIPTZ_DIRECTORY}view_git_sub_header.sh
git branch
bash ${BIZ9_SCRIPTZ_DIRECTORY}view_footer.sh
exit
