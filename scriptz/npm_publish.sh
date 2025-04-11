# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : NPM Publish
source biz9_config
echo "#################"
echo "BiZ9 Framework NPM Publish"
echo "#################"

npm publish --access public

bash ${BIZ9_SCRIPTZ_DIRECTORY}view_footer.sh
exit
