# Copyright 2016 Certified CoderZ
# Author: Brandon Poole Sr. (biz9framework@gmail.com)
# License GNU General Public License v3.0
# Description: BiZ9 Framework : Mobile React Device Build Deploy
source biz9_config
echo "#################"
echo "BiZ9 Framework Mobile React Device Build Deploy"
echo "#################"
react-native bundle --dev false --platform android --entry-file index.js --bundle-output ./android/app/src/main/assets/index.android.bundle --assets-dest ./android/app/src/main/res
react-native run-android
bash scriptz/view_footer.sh
exit
