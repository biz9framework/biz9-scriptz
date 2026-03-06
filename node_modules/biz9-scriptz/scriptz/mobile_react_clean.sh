# Copyright 2016 Certified CoderZ
# Author: Brandon Poole Sr. (biz9framework@gmail.com)
# License GNU General Public License v3.0
# Description: BiZ9 Framework : BiZ9 Framework Mobile React Clean
source biz9_config
echo "#################"
echo "BiZ9 Framework Mobile React Clean"
echo "#################"
cd android && ./gradlew clean
bash scriptz/view_footer.sh
exit
