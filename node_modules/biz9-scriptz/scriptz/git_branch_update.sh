# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : Git Branch Update
source biz9_config
echo "#################"
echo "BiZ9 Framework Git Branch Update"
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

VERSION_NEW=$(INCREMENT_VERSION ${VERSION});
git branch --show current
git checkout -b ${VERSION_NEW}
sed -i "s/BRANCH=.*/BRANCH='${VERSION_NEW}'/" biz9_config
bash ${BIZ9_SCRIPTZ_DIRECTORY}view_footer.sh
exit
