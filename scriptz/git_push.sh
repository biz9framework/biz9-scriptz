# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : Git Push
source biz9_config
echo "#################"
echo "BiZ9 Framework Git Push"
echo "#################"
bash ${BIZ9_SCRIPTZ_DIRECTORY}view_git_sub_header.sh
echo ${REPO}
echo ${BRANCH}
echo "Are you sure?"
read n
if [[  "$n" = "yes"  ]] ; then
    git push -f ${REPO} ${BRANCH}
    else
    echo "exit"
fi
bash ${BIZ9_SCRIPTZ_DIRECTORY}view_footer.sh
exit
