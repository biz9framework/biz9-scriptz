# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : Project Framework Service Update
source biz9_config
echo "#################"
echo "BiZ9 Framework Project Framework Service Update"
echo "#################"
bash ${BIZ9_SCRIPTZ_DIRECTORY}view_git_sub_header.sh
#
DEST_PROJECT_ID=${APP_ID};
DEST_PROJECT_TITLE=${BIZ9_PRODUCT_TITLE};

echo ${DEST_PROJECT_ID}
echo ${DEST_PROJECT_TITLE}

echo "Are you sure?"
read n
n="yes";

if [[  "$n" = "yes"  ]] ; then

    #DEST_PROJECT_TITLE="${PWD##*/}";
    DEST_PROJECT_TITLE="service-node";

    echo ${DEST_PROJECT_TITLE}
    DEST_PROJECT_DIR=${BIZ9_PROJECT_DIRECTORY}${DEST_PROJECT_ID}
    DEST_PROJECT_CODE=${BIZ9_PROJECT_DIRECTORY}${DEST_PROJECT_ID}/code/${DEST_PROJECT_TITLE}

    SRC_FRAMEWORK_TITLE="biz9-service";
    SRC_FRAMEWORK_DIR=${BIZ9_HOME}${SRC_FRAMEWORK_TITLE}/code

    # bk org project -- start
    echo "start"
    if [ ! -d "${DEST_PROJECT_DIR}/backup" ]; then
        mkdir ${DEST_PROJECT_DIR}/backup
    fi
    cp -rf ${DEST_PROJECT_CODE} ${DEST_PROJECT_DIR}/backup/${DEST_PROJECT_TITLE}_$(date +%Y%m%d_%H%M)
    echo 'copy complete'
    # bk org project -- end

    # rm dest files -- start
    rm -rf  ${DEST_PROJECT_CODE}
    # rm dest files -- end

    # cp framework src to project dir -- start
    mkdir ${DEST_PROJECT_CODE}
    cp -rf ${SRC_FRAMEWORK_DIR}/* ${DEST_PROJECT_CODE}
    # cp framework src to project dir -- end

    echo "end"
else
echo exit
fi
bash ${BIZ9_SCRIPTZ_DIRECTORY}view_footer.sh
exit
