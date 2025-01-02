# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : App Git Push
source ../../../../biz9_config
echo "#################"
echo "BiZ9 Framework App Git Push"
echo "#################"
bash scriptz/view_git_sub_header.sh

GIT_BRANCH=${BIZ9_GIT_BRANCH}

echo "Are you sure?"
read n
if [[  "$n" = "yes"  ]] ; then
    git push -f ${REPO} ${BRANCH}
    else
    echo "exit"
fi

bash scriptz/view_footer.sh
exit
