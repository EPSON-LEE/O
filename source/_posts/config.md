
---
title: 环境安装
date: 2020-10-10 10:20:36
tags: [配置]
---

开发过程中需要安装很多工具链配并且进行各种配置辅助我们的开发，当我跳槽或者换电脑时就需要花费很多时间在这个上面；所以在这里把他们记录下来，避免去其他搜索网站上去搜索各种安装教程。

## 安装 VSCODE

(2020-08-26 可用） 

> 下载地址： https://code.visualstudio.com/Download

## 安装 Homebrew

(2020-08-26 可用）

> Homebrew是一款Mac OS平台下的软件包管理工具，拥有安装、卸载、更新、查看、搜索等很多实用的功能。简单的一条指令，就可以实现包管理，而不用你关心各种依赖和文件路径的情况

安装前需要配置翻墙代理 （如流中联系 IT， 按照教程配置代理即可），配置完成后在 terminal 中输入以下命令：

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

[解决 Homebrew 安装时速度慢的问题](https://zhuanlan.zhihu.com/p/90508170)

## 安装 git

(2020-08-26 可用）

你可以通过以下几种方式来安装：

- 通过 Homebrew 安装

在 terminal 中输入如下命令

```
brew install git
```

- 直接在官网安装二进制包

> 下载地址： https://sourceforge.net/projects/git-osx-installer/


检查是否安装成功

```
git --version
```

## 安装 nvm

(2020-08-26 可用）

- 使用 Homebrew 安装

在终端输入命令
```
brew install nvm
```

安装完成之后需要进行配置：将以下命令复制到终端执行
```
echo "source $(brew --prefix nvm)/nvm.sh" >> .bash_profile
```

执行命令
```
. ~/.bash_profile
```

- 使用 curl 命令安装

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
```

## 解决 Homebrew 443 Connection refused 的方法

修改本机 hosts

```
sudo vim /etc/hosts
 
151.101.108.133  raw.githubusercontent.com

```

## icode 平台遇到的问题

1. clone 代码 clone 代码代码提示 Authentication failed 
- 解决：terminal 提示让用户输入的密码并不是自己的密码。icode 平台需要自己设置一个密码， [修改密码](http://icode.baidu.com/account/password) ， clone 后输入这个密码就可以了。


## 抓包工具


> charles


[破解及基本使用](https://juejin.im/post/6844903733478817800)
[进阶使用方法](https://juejin.im/post/6844903640272994317)
        
