# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : Blank
source biz9_config
echo "#################"
echo "BiZ9 Framework Search String Filez"
echo "#################"
echo 'Enter Text:'
read str
echo '##############'
grep -rnw $(pwd)/ -e ${str}
echo "----------------------------------"
bash ${BIZ9_SCRIPTZ_DIRECTORY}view_footer.sh
exit
