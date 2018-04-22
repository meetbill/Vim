## Vim IDE

```
-----------------------------------------------------
                                      __
           __                  __    /\ \
   __  __ /\_\    ___ ___     /\_\   \_\ \     __
  /\ \/\ \\/\ \ /' __` __`\   \/\ \  /'_` \  /'__`\
  \ \ \_/ |\ \ \/\ \/\ \/\ \   \ \ \/\ \_\ \/\  __/
   \ \___/  \ \_\ \_\ \_\ \_\   \ \_\ \___,_\ \____\
    \/__/    \/_/\/_/\/_/\/_/    \/_/\/__,_ /\/____/

-----------------------------------------------------
```

<!-- vim-markdown-toc GFM -->

* [1 Vim IDE 部署](#1-vim-ide-部署)
    * [1.1 Git 进行下载安装](#11-git-进行下载安装)
    * [1.2 Curl 进行下载安装](#12-curl-进行下载安装)
    * [1.3 卸载](#13-卸载)
* [2 牛刀小试](#2-牛刀小试)
* [3 版本发布](#3-版本发布)
* [4 小额捐款](#4-小额捐款)

<!-- vim-markdown-toc -->

## 1 Vim IDE 部署

> * 本 Vim 可以重复安装
> * 普通用户执行程序时需要有 sudo 权限

### 1.1 Git 进行下载安装
```
#git clone https://github.com/meetbill/Vim.git
#chmod 777 -R Vim
#cd Vim
#./start_vim.sh
```
**常见问题**

使用 Git clone 失败

```
[root@localhost ~]# git clone https://github.com/meetbill/Vim.git
Initialized empty Git repository in /root/Vim/.git/
error:  while accessing https://github.com/meetbill/Vim.git/info/refs

fatal: HTTP request failed
```
解决方法
```
#git config --global http.sslVerify false
```
### 1.2 Curl 进行下载安装

```
#curl -o vim.zip https://codeload.github.com/meetbill/Vim/zip/master
#unzip vim.zip
#cd Vim-master
#bash start_vim.sh
```
### 1.3 卸载
```
#cd ~
#rm -rf .vim*
```

## 2 牛刀小试

> * [Vim 原生的功能](doc/vim.md)
> * [Vim IDE 功能](doc/ide.md)
> * [Vim 常用技巧](https://github.com/meetbill/Vim/wiki/vim_skill)
> * [VIM wiki](https://github.com/meetbill/Vim/wiki)
> * VIM 课外阅读 --[笨方法学 Vimscript](http://learnvimscriptthehardway.onefloweroneworld.com/)

![Screenshot](https://github.com/meetbill/Vim/raw/master/images/vim.jpg)

## 3 版本发布

> * [V1.1]
>   * [V1.1.01]  2018-04-22  修改：使用 [pathogen](https://github.com/tpope/vim-pathogen) 管理插件，目前插件可以查看[插件列表](https://github.com/meetbill/Vim/wiki/vim_plugin)
> * [V1.0 released](https://github.com/meetbill/Vim/releases)
>   * [V1.0.12]  2017-09-28  增加：Golang 语法高亮
>   * [V1.0.11]  2017-07-24  修改：状态栏显示
>   * [V1.0.10]  2017-04-21  增加：Python 代码自动审查(pyflakes)
>   * [V1.0.09]  2017-04-18  增加：括号自动匹配插件 [auto-pairs](https://github.com/jiangmiao/auto-pairs)
>   * [V1.0.08]  2017-03-18  增加：自动格式化中文排版插件 [pangu](https://github.com/hotoo/pangu.vim), 更新 [TOC](https://github.com/mzlogin/vim-markdown-toc) 插件。
>   * [V1.0.07]  2016-10-07  增加：Markdown 生成 [TOC](https://github.com/mzlogin/vim-markdown-toc) 插件
>   * [V1.0.05]  2016-08-26  修改：更新 Ctags, 添加 Python 代码自动折叠
>   * [V1.0.04]  2016-05-29  增加：自动生成 markdown 头信息
>   * [V1.0.03]  2016-05-18  修订：对 GitHub 文档进行整理
>   * [V1.0.02]  2014-08-13  新增：对 Vim 进行整理发布一键化程序
>   * [V1.0.01]  2014-01-01  新增：发布初始版本。

## 4 小额捐款

如果你觉得 Vim 对你有帮助，可以对作者进行小额捐款（支付宝）

![Screenshot](images/5.jpg)

