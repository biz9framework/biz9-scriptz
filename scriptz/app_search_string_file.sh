# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : Search For String in FileZ
source biz9_config
echo "#################"
echo "BiZ9 Search For String in FileZ"
echo "#################"
bash ${BIZ9_SCRIPTZ_DIRECTORY}view_git_sub_header.sh
echo 'Enter String:'
read str
echo '##############'
grep -rnw $(pwd)/ -e ${str}
bash ${BIZ9_SCRIPTZ_DIRECTORY}view_footer.sh
exit
