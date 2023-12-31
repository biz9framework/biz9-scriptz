# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : Mobile Android Deploy
source ./.biz9_config.sh
echo "#################"
echo "-->BiZ9 Mobile Android Deploy"
echo "#################"
INCREMENT_VERSION ()
{
    declare -a part=( ${1//\./ } )
        declare    new
        declare -i carry=1

        for (( CNTR=${#part[@]}-1; CNTR>=0; CNTR-=1 )); do
            len=${#part[CNTR]}
    new=$((part[CNTR]+carry))
        [ ${#new} -gt $len ] && carry=1 || carry=0
        [ $CNTR -gt 0 ] && part[CNTR]=${new: -len} || part[CNTR]=${new}
    done
        new="${part[*]}"
        echo -e "${new// /.}"
}
APP_VERSION_NEW=$(INCREMENT_VERSION $APP_VERSION);
# config
rm -rf config.xml
cp -rf ${BIZ9_MOBILE_CONFIG_FILE} config.xml
sed -i "s/CONFIG_ID/${CONFIG_ID}/g" config.xml
sed -i "s/CONFIG_VERSION/${APP_VERSION_NEW}/g" config.xml
sed -i "s/APP_VERSION=.*/APP_VERSION='${APP_VERSION_NEW}'/" .biz9_config.sh
sed -i "s/APP_VERSION=.*/APP_VERSION='${APP_VERSION_NEW}'/" www/scripts/biz9-mobile/scriptz/config.js
sed -i "s/PROJECT_ID=.*/PROJECT_ID='${PROJECT_ID}'/" .biz9_config.sh
sed -i "s/PROJECT_ID=.*/PROJECT_ID='${PROJECT_ID}'/" www/scripts/biz9-mobile/scriptz/config.js
sed -i "s/APP_TITLE_ID=.*/APP_TITLE_ID='${APP_TITLE_ID}'/" .biz9_config.sh
sed -i "s/APP_TITLE_ID=.*/APP_TITLE_ID='${APP_TITLE_ID}'/" www/scripts/biz9-mobile/scriptz/config.js
sed -i "s/APP_TITLE=.*/APP_TITLE='${APP_TITLE}'/" .biz9_config.sh
sed -i "s/APP_TITLE=.*/APP_TITLE='${APP_TITLE}'/" www/scripts/biz9-mobile/scriptz/config.js
sed -i "s/APP_VENDOR=.*/APP_VENDOR='${APP_VENDOR}'/" .biz9_config.sh
sed -i "s/APP_VENDOR=.*/APP_VENDOR='${APP_VENDOR}'/" www/scripts/biz9-mobile/scriptz/config.js
sed -i "s/BIZ9_MOBILE_VERSION=.*/BIZ9_MOBILE_VERSION='${BIZ9_MOBILE_VERSION}'/" .biz9_config.sh
sed -i "s/BIZ9_MOBILE_VERSION=.*/BIZ9_MOBILE_VERSION='${BIZ9_MOBILE_VERSION}'/" www/scripts/biz9-mobile/scriptz/config.js
sed -i "s/APP_TITLE/${APP_TITLE}/g" config.xml
echo "BiZ9 MOBILE COPY CONFIG OK..."
cordova prepare
echo "-->BiZ9 MOBILE PREPARE OK...."
cordova compile
echo "-->BiZ9 MOBILE COMPILE OK...."
cordova build --release android --packageType=bundle
echo "-->BiZ9 Icon Update OK..."
node other/scriptz/icon_resize.js
cp -rf other/cordova/icon/512.png www/images/preload-logo.png
#apk
${BIZ9_MOBILE_ZIPALIGN_DIR}/zipalign -f -v 4  ${BIZ9_MOBILE_APP_DEBUG_APK} ${APP_TITLE_ID}_${APP_VERSION_NEW}".apk"
apksigner sign --ks-key-alias alias_name --ks ${BIZ9_MOBILE_KEY_STORE} --ks-pass pass:"${BIZ9_MOBILE_APP_KEY_STORE_PASSWORD}" --min-sdk-version 22 ${APP_TITLE_ID}_${APP_VERSION_NEW}".apk"
#jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -storepass ${BIZ9_MOBILE_APP_KEY_STORE_PASSWORD} -keystore ${BIZ9_MOBILE_KEY_STORE} ${APP_TITLE_ID}_${APP_VERSION_NEW}".apk" alias_name
echo "-->BiZ9 MOBILE APK APKSIGNER APK OK..."
#aab
${BIZ9_MOBILE_ZIPALIGN_DIR}/zipalign -f -v 4  ${BIZ9_MOBILE_APP_BUNDLE_RELEASE} ${APP_TITLE_ID}_${APP_VERSION_NEW}".aab"
apksigner sign --ks-key-alias alias_name --ks ${BIZ9_MOBILE_KEY_STORE} --ks-pass pass:"${BIZ9_MOBILE_APP_KEY_STORE_PASSWORD}"  --min-sdk-version 22 ${APP_TITLE_ID}_${APP_VERSION_NEW}".aab"
#jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -storepass ${BIZ9_MOBILE_APP_KEY_STORE_PASSWORD} -keystore ${BIZ9_MOBILE_KEY_STORE} ${APP_TITLE_ID}_${APP_VERSION_NEW}".aab" alias_name
echo "-->BiZ9 MOBILE AAB OK..."
java -jar /home/mama/www/opz/toolz/bundletool/bundletool-all-1.9.1.jar build-apks --bundle=${APP_TITLE_ID}_${APP_VERSION_NEW}'.aab' --output=${APP_TITLE_ID}_${APP_VERSION_NEW}'.apks' --ks=${BIZ9_MOBILE_KEY_STORE} --ks-key-alias=alias_name --ks-pass=pass:${BIZ9_MOBILE_APP_KEY_STORE_PASSWORD}
echo "-->BiZ9 MOBILE BUNDLETOOL OK..."
rsync -rave "ssh -2 -i ${BIZ9_MOBILE_SSH_KEY}" ${APP_TITLE_ID}_${APP_VERSION_NEW}.aab  admin@${BIZ9_MOBILE_DEPLOY_IP}:${BIZ9_MOBILE_DEPLOY_DIR}
rsync -rave "ssh -2 -i ${BIZ9_MOBILE_SSH_KEY}" ${APP_TITLE_ID}_${APP_VERSION_NEW}.apk  admin@${BIZ9_MOBILE_DEPLOY_IP}:${BIZ9_MOBILE_DEPLOY_DIR}
##rm
rm -rf *.apk
rm -rf *.apks
rm -rf *.idsig
rm -rf *.aab
echo "----------------------------------"
echo "Framework Version: ${BIZ9_MOBILE_VERSION}"
echo "Project-ID: ${PROJECT_ID}"
echo "APP Title: ${APP_TITLE}"
echo "APP-Title-ID: ${APP_TITLE_ID}"
echo "Config-ID : ${CONFIG_ID}"
echo "APP Version: ${APP_VERSION_NEW}"
echo "Android .AAB: ${BIZ9_MOBILE_DOWNLOAD_URL}/${APP_TITLE_ID}_${APP_VERSION_NEW}.aab"
echo "---"
echo "Android .APK: ${BIZ9_MOBILE_DOWNLOAD_URL}/${APP_TITLE_ID}_${APP_VERSION_NEW}.apk"
echo "-->Done!"
echo "----------------------------------"
exit 1
