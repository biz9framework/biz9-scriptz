# Copyright 2016 Certified CoderZ
# Author: Brandon Poole Sr. (biz9framework@gmail.com)
# License GNU General Public License v3.0
# Description: BiZ9 Framework: Git Commit
source biz9_config
echo "#################"
echo "BiZ9 Framework App Git Commit"
echo "#################"
echo 'Enter notes:'
read commit_notes
git add -A .
git commit -m  "${commit_notes}"
npm version patch --no-git-tag-version --tag-version-prefix=''
PACKAGE_VERSION=$(npm pkg get version --workspaces=false | tr -d '"')
sed -i "s/VERSION=.*/VERSION='${PACKAGE_VERSION}'/" biz9_config
bash ${BIZ9_SCRIPTZ_DIRECTORY}view_footer.sh
exit
