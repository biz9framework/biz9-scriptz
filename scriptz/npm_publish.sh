# Copyright 2016 Certified CoderZ
# Author: Brandon Poole Sr. (biz9framework@gmail.com)
# License GNU General Public License v3.0
# Description: BiZ9 Framework : NPM Publish
source biz9_config
echo "#################"
echo "BiZ9 Framework NPM Publish"
echo "#################"

npm publish --access public

bash ${BIZ9_SCRIPTZ_DIRECTORY}view_footer.sh
exit
