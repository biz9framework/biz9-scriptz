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
echo "Enter Folder Path"
read folder_path
echo "--------- Search ResultZ ---------"
grep -rnH ${str} -F $(pwd)/${folder_path}
echo "--------- Search Text ---------"
echo ${str}
echo "--------- Folder Path ---------"
echo ${folder_path}
echo "----------------------------------"
bash ${BIZ9_SCRIPTZ_DIRECTORY}view_footer.sh
exit
