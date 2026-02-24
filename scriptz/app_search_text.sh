# Copyright 2016 Certified CoderZ
# Author: Brandon Poole Sr. (biz9framework@gmail.com)
# License GNU General Public License v3.0
# Description: BiZ9 Framework : App Search Text
source biz9_config
echo "#################"
echo "BiZ9 App Search Text"
echo "#################"
bash ${BIZ9_SCRIPTZ_DIRECTORY}view_git_sub_header.sh
echo 'Enter Text:'
read str
echo '##############'
grep -rnw $(pwd)/ -e ${str}
echo "----------------------------------"
echo "Done!"
echo "----------------------------------"
bash ${BIZ9_SCRIPTZ_DIRECTORY}view_footer.sh
exit
