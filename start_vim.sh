#!/bin/bash      
#########################################################################
# File Name: config.sh
# Author: meetbill
# mail: meetbill@163.com
# Created Time: Thu 06 Nov 2014 06:31:50 PM CST
#########################################################################
#Define Path    
VIMRC=~/.vimrc 
VIM_FILE=./packages/vim*

#deine Vim_config     
function Vim_config ()      
{   
	clear
    if [ `id -u` -eq 0 ];
    then
	    tar -zxf ${VIM_FILE} -C ~/
	    read -p "Please input your name:" AUTHOR      
	    sed -i "s/Bill/$AUTHOR/g" $VIMRC     
	    read -p "Please input your E-mail:" MAIL_AUTHOR     
	    sed -i "s/XXXXXXX@qq.com/$MAIL_AUTHOR/g" $VIMRC     
	    cd ./packages/
        tar -zxf ctags.tar.gz -C /usr/bin/
        chmod 755 /usr/bin/ctags
	    CK_VIM=`grep "vi='vim'" ~/.bashrc | wc -l`
	    if [ "w${CK_VIM}" = "w0" ]
	    then
		    echo " " >> ~/.bashrc
		    echo "alias vi='vim'" >> ~/.bashrc
	    fi 
	    . ~/.bashrc
	    echo "this vim config is success !" 
	    exit 0
    else
        chmod 777 -R *
	    sudo tar -zxf ${VIM_FILE} -C ~/
	    read -p "Please input your name:" AUTHOR      
	    sed -i "s/Bill/$AUTHOR/g" $VIMRC     
	    read -p "Please input your E-mail:" MAIL_AUTHOR     
	    sed -i "s/XXXXXXX@qq.com/$MAIL_AUTHOR/g" $VIMRC     
	    cd ./packages/
        sudo tar -zxf ctags.tar.gz -C /usr/bin/
        sudo chmod 755 /usr/bin/ctags
        if [[ -e ~/.bashrc  ]]
        then
            CK_VIM=`grep "vi='vim'" ~/.bashrc | wc -l`
            if [ "w${CK_VIM}" = "w0" ]
            then
                echo " " >> ~/.bashrc
                echo "alias vi='vim'" >> ~/.bashrc
            fi 
            . ~/.bashrc
        fi
	    echo "this vim config is success !" 
	    exit 0
    fi
}      
          
          
clear 
echo " " 
echo -e "    \033[44;37m========================================================================\033[0m" 
echo -e "    \033[44;33m|------------------------------Description------------------------------\033[0m" 
echo -e "    \033[44;37m========================================================================\033[0m" 
echo -e "    \033[33m     \033[0m" 
echo -e "    \033[33m     the confing of vim is for admin\033[0m" 
echo -e "    \033[33m     \033[0m" 
echo -e "    \033[44;37m=========================================================================\033[0m" 
echo " "
echo " "

VIM_PATH=$(cd `dirname $0`; pwd)
cd ${VIM_PATH}


PS3="Please input a number":              
  select i in  "Vim_config" "quit"
do 
	case $i in       
	Vim_config )      
	Vim_config      
	;;
	quit)
	exit $?
	;;
	*)      
	echo      
	echo -e "\033[44;37mPlease Insert :Vim_config(1)|Exit(2)\033[0m" 
	echo      
	;;      
	esac      
done 
