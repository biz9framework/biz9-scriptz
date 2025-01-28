# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : BiZ9 Framework Mobile React Clean
source biz9_config
echo "#################"
echo "BiZ9 Framework Mobile React Clean"
echo "#################"
cd android && ./gradlew clean
bash scriptz/view_footer.sh
exit
