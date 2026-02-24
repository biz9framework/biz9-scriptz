# Copyright 2016 Certified CoderZ
# Author: Brandon Poole Sr. (biz9framework@gmail.com)
# License GNU General Public License v3.0
# Description: BiZ9 Framework : Search Filename
source biz9_config
echo "#################"
echo "BiZ9 Framework Search Filename"
echo "#################"
echo 'Enter Filename:'
read str
echo '##############'
find . -print | grep -i ${str}
echo "----------------------------------"
bash ${BIZ9_SCRIPTZ_DIRECTORY}view_footer.sh
exit
