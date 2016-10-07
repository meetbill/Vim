#### Table of contents

* [vim IDE 部署方法](#vim-ide-部署方法)
	* [VIM IDE部署方法](#vim-ide部署方法)
	* [IDE一览](#ide一览)
* [Vim 原生的功能](#vim-原生的功能)
* [Vim IDE 功能](#vim-ide-功能)
* [vim版本发布](#vim版本发布)
* [小额捐款](#小额捐款)

> * [VIM基础](doc/vim.md)
> * VIM课外阅读--[笨方法学Vimscript](http://learnvimscriptthehardway.onefloweroneworld.com/)

## vim IDE 部署方法

### VIM IDE部署方法

部署方法很简单

```
git clone https://github.com/BillWang139967/Vim.git
sh start_vim.sh
```
### IDE一览

![Screenshot](https://github.com/BillWang139967/Vim/raw/master/images/vim.jpg)

## Vim 原生的功能

> * % 跳转到配对的括号（小括号，方括号，大括号都在次范围），一般用于查看if，while的范围
> * 多行注释：
>      vim多行注释,ctrl+v，选好行以后I(大写很重要),然后//,然后两次ESC
> * 格式对齐：
>      vim一样可以把混乱的格式排列整齐,只要输入"gg=G"
>      这个是直接在 normal模式按的, gg=G , 不是 :gg=G
> * 缩进：
>      >>和<< >>和c++的输入输出流用的符号一样,这个缩进或者反缩进的量由shiftwidth控制,默认是8个空格.
>      一般来说,这个功能都会和v命令一起用,以实现整块缩进,当和v一起使用的时候,只需要>和<即可,也就是只输入一次
> * 搜索关键字:* 定位至当前光光标所指单词的下一次出现的地方,# 定位至当前光光标所指单词的上一次出现的地方,n 定位至跳至已被标记出的单词下一次出现的地方,shift+n 定位至跳至已被标记出的单词上一次出现的地方

## Vim IDE 功能

```
    <F2> : TlistToggle               //显示函数列表
            按<F2>将会在VIM的左边打开一个Taglist窗口，这个窗口里面包含了C文件里面的定义，如struct,typedef,全局变量,函数等。
            使用'<'Ctrl>+h将光标移动到左边的窗口，上下选择tag按回车定位到tag的定义处。

    <F3> : NERDTreeToggle            //当前目录列表，方便打开文件
            按<F3>会在VIM的右边打开一个文件浏览器窗口。再按一下<F3>会关闭这个窗口。

    <F4> : MRU			             //最近文件列表
            按<F4>会打开一个MRU窗口，这个窗口里面记录了最近打开的文档，上下选择文件回车打开。如果没有你想打开的文件可以按"q"关闭窗口。

    <F5> : LookupFile
            <F5>在VIM的上面打开文件查找窗口，

    <F6> : Dox
            添加函数注释

    <F7> : gcc
            直接按<F7>可以对打开的文件直接编译

    <F8> : gdb
            直接按<F8>可以直接进入gdb调试状态

    <F9> : Generate tags
            在代码间跳来跳去。先按<F9>生成tag数据库。将会在项目的当前目录下生成tags文件。
            此时将光标放在某个函数调用上，按<Ctrl>+]就会跳到函数的定义处，按<Ctrl>+o就会跳回来。

    <F10> : HLUDSync
            按<F10>可以生成cscope的数据库文件cscope.out，再使用",sa"(:cs add cscope.out)添加数据库文件。
            当下次启动VIM的时候就会自动加载当前目录下的cscope数据库文件。
            在.vimrc里面定义了使用cscope的快捷键，比如将光标放在某个函数上使用命令",sc"就可以查看这个函数被哪些函数调用过，

    <F11> :genfiletags.sh
            <F11>是让终端全屏显示

    <F12>add cscope.out
            在查找文件之前要生成文件数据库，
            按<F12>将会在项目的当前目录下生成tags.filename文件，所以最好是在项目的根目录下按<F12>。再按<F5>就可以使用通配符查找文件了。
            
    //--------------------------------【#】	头文件和c文件切换
    ：AV
            垂直分屏显示头文件或者c文件

```

> * 输入main后按table键，自动生成main函数
> * 输入单词自动补全(注，本文档之前输入的单词自动补全)
> * 按tab键会产生4个空格，很适合python编程哦
> * 命令行模式输入
>    * :DIstart,可以进行画图，通过
>    * :DIstop 进行关闭,画图是Vim普通模式下画图，画图时可以随时切换Vim编辑模式
> * 命令行模式输入
>    * :GenTocGFM ,生成 GFM 链接风格的 Table of Contents.适用于 GitHub 仓库里的 Markdown 文件。
>    * :GenTocRedcarpet , 生成 Redcarpet 链接风格的 Table of Contents.适用于使用 Redcarpet 作为 Markdown 引擎的 Jekyll 项目或其它地方。
> * 普通模式下下,zo 展开,zc 收起,zn 全部展开,zN 全部折叠

## vim版本发布 
----
* v1.0.6，2016-10-07，增加为 Markdown 生成 TOC 的 Vim 插件
* v1.0.5，2016-08-26，修正ctags,添加python 代码自动折叠
* v1.0.4，2016-05-29，添加自动生成markdown头信息
* v1.0.3，2016-05-18，对github文档进行整理
* v1.0.2，2014-08-13，新增：对Vim进行整理发布一键化程序 
* v1.0.1，2014-01-01，新增。发布初始版本。


## 小额捐款

如果你觉得Vim对你有帮助, 可以对作者进行小额捐款(支付宝)

![Screenshot](images/5.jpg)






