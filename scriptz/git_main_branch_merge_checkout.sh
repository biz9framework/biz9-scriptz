# Copyright 2016 Certified CoderZ
# Author: Brandon Poole Sr. (biz9framework@gmail.com)
# License GNU General Public License v3.0
# Description: BiZ9 Framework : Git Main Branch Merge Checkout
source biz9_config
echo "#################"
echo "BiZ9 Framework Git Main Branch Merge Checkout"
echo "#################"
bash ${BIZ9_SCRIPTZ_DIRECTORY}view_git_sub_header.sh
NEW_BRANCH='main';
echo "Are you sure?"
read n
echo 'Enter notes:'
read commit_notes
if [[  "$n" = "yes"  ]] ; then
    git add -A .
    git commit -m  "${commit_notes}"
    git branch main
    git checkout main
    git add -A .
    git commit -m  "${commit_notes}"
    git merge ${BRANCH}
    sed -i "s/BRANCH=.*/BRANCH='main'/" biz9_config
else
    echo "exit"
fi
bash ${BIZ9_SCRIPTZ_DIRECTORY}view_footer.sh
exit
