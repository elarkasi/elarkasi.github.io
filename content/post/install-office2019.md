---
title: "安装 office2019"
date: 2020-05-21T17:14:27+08:00
draft: false
tags: ["office"]
---

#### 准备工作

1.  安装工具的下载地址 : [安装工具](https://www.microsoft.com/en-us/download/details.aspx?id=49117)

    安装工具下载好了之后可以解压或者直接双击安装，它会释放一个可执行的程序Setup和示例配置文件(后缀是xml)，可以将所有示例配置文件删除，我们只需要用到配置页面生成的文件

    ![1](https://img-blog.csdnimg.cn/20191221183135906.png)

2.  定制配置文件 : [配置文件](https://config.office.com/)

    点击上面的连接，进入配置页，在页面下方点击创建新的配置，选择好你需要的安装项目和安装配置后，点击页面右上角导出按钮就可以保存一份配置好的Configuration.xml文件，将它放到和setup相同的文件夹内

    ![2](https://img-blog.csdnimg.cn/20191221183922920.png)

#### 开始安装

在powershell管理员模式下进入到setup文件目录

##### 1. 下载安装文件(如果你没有安装介质)

``` {style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"}
  .\setup.exe /download Configuration.xml
```

这个时候你就可以去撸个猫，泡个茶什么的,文件下载完成后powershell会回到当前目录，你可以dir看一下下载了哪些文件。如果你已经有了安装介质，比如一个ISO文件，你也可以加载或解压这个镜像文件，然后修改Configuration.xml中的SourcePath对应的目录，具体配置文件的内容可以参考[安装工具](https://www.microsoft.com/en-us/download/details.aspx?id=49117)页面的详细介绍

##### 2. 安装

``` {style="color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4"}
  .\setup.exe /configure Configuration.xml
```

完成后就可以激活office了，如果不知道怎么激活office,请阅读我的[KMS激活](https://blog.alex4u.win/post/kms/)介绍
