# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : Search Filename
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
