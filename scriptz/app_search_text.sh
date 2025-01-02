# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : App Search Text
source ./.biz9_config.sh
echo "#################"
echo "BiZ9 App Search Text"
echo "#################"
echo 'Enter Text:'
read str
echo '##############'
grep -rnw $(pwd)/ -e ${str}
echo "----------------------------------"
echo "Done!"
echo "----------------------------------"
exit 1
