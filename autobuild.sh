 #!/usr/bin/env bash

set -e




##################################################################
#Function List Support Cmd :
help_menu()
{
    echo ""
    echo "------------------------ help menu --------------------------"
    echo " help menu Options: "
    echo "./autobuild.sh all, --clean all && build all"
    echo "./autobuild.sh clean, --clean all"
    echo "./autobuild.sh help, -h, --help show this text"
    echo "-------------------------------------------------------------"
}



##################################################################
#defaule version is V0.��.Сʱ
VERSION_CODE_MAJOR=0
VERSION_CODE_MINOR=$(date +%H)
VERSION_CODE_MINI=$(date +%M)
DEFAULT_PRODUCT_NAME=xxx


##################################################################
#just for test support define user tftp file patch
USER_NIMD=guojia
FILE_PATCH=tftp_guojia
USER_SHELL=server
#build module


##################################################################
#function

echo_autobuild_start()
{
    echo ""
    echo -e "\e[32m***********  ./autobuild.sh  $1 **************\e[0m"
}


build_all()
{
    echo "make clean && make html"
    make clean
    make html
	rm -rf docs
	cp -R _build/html docs
    echo "create docs finished"
}
clean_all()
{
    echo "clean all"
    make clean
}
##################################################################
datetime=$(date +%Y%m%d_%H%M)
echo_autobuild_start;




##################################################################
if [ "$#" -eq "0" ];then
    build_all;
	exit 0
elif [ "$#" -eq "1" ];then
echo "."
elif [ "$#" -eq "2" ];then
echo ".."
elif [ "$#" -eq "3" ];then
echo "..."
else
	help_menu;
	exit 0
fi

if [ "$1" == "all" ] || [ "$1" == "ALL" ];then
    build_all;
    exit 0
elif [ "$1" == "clean" ];then
    clean_all
    exit 0
elif [ "$1" == "send" ];then

    exit 0
elif [ "$1" == "run" ] ;then
    echo "open html"
    x-www-browser _build/html/index
    open -a /Applications/Firefox.app  _build/html/index
    exit 0
elif [ "$1" == "help" ] || [ "$1" == "h" ];then
    help_menu;
    exit 0
else
    echo "input param error!"
    help_menu;
    exit 0
fi


##################################################################



