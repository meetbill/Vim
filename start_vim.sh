#!/bin/bash      
#########################################################################
# File Name: config.sh
# Author: wangbin
# mail: 772384788@qq.com
# Created Time: Thu 06 Nov 2014 06:31:50 PM CST
#########################################################################
#Define Path    
VIMRC=~/.vimrc 
VIM_FILE=./packages/vim*

#deine Vim_config     
function Vim_config ()      
{   
	clear
	tar -zxf ${VIM_FILE} -C ~/
	read -p "Please input your name:" AUTHOR      
	sed -i "s/Bill/$AUTHOR/g" $VIMRC     
	read -p "Please input your E-mail:" MAIL_AUTHOR     
	sed -i "s/XXXXXXX@qq.com/$MAIL_AUTHOR/g" $VIMRC     
	cd ./packages/
    tar -zxf ctags.tar.gz /usr/bin/
    chmod 755 /usr/bin/ctags
	CK_VIM=`grep "vi='vim'" ~/.bashrc | wc -l`
	if [ "w${CK_VIM}" = "w0" ]
	then
		echo "alias vi='vim'" >> ~/.bashrc
	fi 
	. ~/.bashrc
	echo "this vim config is success !" 
	exit 0
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
