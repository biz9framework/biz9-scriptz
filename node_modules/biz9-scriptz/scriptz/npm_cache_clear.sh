# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : NPM Cache Clear
source biz9_config
echo "#################"
echo "BiZ9 Framework NPM Cache Clear"
echo "#################"

npm cache clean --force

bash ${BIZ9_SCRIPTZ_DIRECTORY}view_footer.sh
exit
