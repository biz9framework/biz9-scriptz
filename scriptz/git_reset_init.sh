# Copyright 2016 Certified CoderZ
# Author: Brandon Poole Sr. (biz9framework@gmail.com)
# License GNU General Public License v3.0
# Description: BiZ9 Framework : Git Reset Init
source biz9_config
echo "#################"
echo "BiZ9 Framework Git Reset Init"
echo "#################"
bash ${BIZ9_SCRIPTZ_DIRECTORY}view_git_sub_header.sh
rm -rf .git
git init
git checkout -b main
bash ${BIZ9_SCRIPTZ_DIRECTORY}view_footer.sh
exit
