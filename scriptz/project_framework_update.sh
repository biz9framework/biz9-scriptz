# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : Project Framework Update
source biz9_config
echo "#################"
echo "BiZ9 Framework Project Framework Update"
echo "#################"
#
DEST_PROJECT_ID=${PROJECT_ID};
echo "Are you sure?"
read n

if [[  "$n" = "yes"  ]] ; then

    DEST_PROJECT_TITLE="${PWD##*/}";
    #DEST_PROJECT_TITLE="service-node";
    DEST_PROJECT_DIR=${BIZ9_PROJECT_DIRECTORY}${DEST_PROJECT_ID}
    DEST_PROJECT_CODE=${BIZ9_PROJECT_DIRECTORY}${DEST_PROJECT_ID}/code/${DEST_PROJECT_TITLE}
    BK_DATE=$(date +%Y%m%d_%H%M);

    SRC_FRAMEWORK_DIR=${BIZ9_HOME}${BIZ9_PRODUCT_TITLE}/code

    # bk org project -- start
    if [ ! -d "${DEST_PROJECT_DIR}/backup" ]; then
        mkdir ${DEST_PROJECT_DIR}/backup
    fi
    cp -rf ${DEST_PROJECT_CODE} ${DEST_PROJECT_DIR}/backup/${DEST_PROJECT_TITLE}_${BK_DATE}
    # bk org project -- end

    # cp framework src to project dir -- start
    cp -rf ${SRC_FRAMEWORK_DIR}/* ${DEST_PROJECT_CODE}
    # cp framework src to project dir -- end

    #copy biz9_config back -- start
    cp -rf ${DEST_PROJECT_DIR}/backup/${DEST_PROJECT_TITLE}_${BK_DATE}/biz9_config ${DEST_PROJECT_CODE}/
    #copy biz9_config back -- end
else
    echo 'exit success';
    exit
fi
bash ${BIZ9_SCRIPTZ_DIRECTORY}view_footer.sh
exit
