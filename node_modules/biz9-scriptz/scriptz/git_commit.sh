# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : Git Commit
source biz9_config
echo "#################"
echo "BiZ9 Framework App Git Commit"
echo "#################"
bash ${BIZ9_SCRIPTZ_DIRECTORY}view_git_sub_header.sh
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
echo 'Enter notes:'
read commit_notes
VERSION_NEW=$(INCREMENT_VERSION ${VERSION});
echo ${APP_VERSION_NEW}
sed -i "s/VERSION=.*/VERSION='${VERSION_NEW}'/" biz9_config
git add -A .
git commit -m  "${commit_notes}"
npm version patch --no-git-tag-version --tag-version-prefix=''
bash ${BIZ9_SCRIPTZ_DIRECTORY}view_footer.sh
exit
