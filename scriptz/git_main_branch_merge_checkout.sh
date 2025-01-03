# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : Git Main Branch Merge Checkout
source biz9_config
echo "#################"
echo "BiZ9 Framework Git Main Branch Merge Checkout"
echo "#################"
bash ${BIZ9_SCRIPTZ_DIRECTORY}view_git_sub_header.sh
NEW_BRANCH='main';
echo "Are you sure?"
read n
if [[  "$n" = "yes"  ]] ; then
    git branch -D main
    git branch --show current
    sed -i "s/BRANCH=.*/BRANCH='${NEW_BRANCH}'/" biz9_config
else
    echo "exit"
fi
bash ${BIZ9_SCRIPTZ_DIRECTORY}view_footer.sh
exit
