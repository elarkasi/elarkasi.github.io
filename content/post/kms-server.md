---
title: "部署KMS Server"
date: 2020-04-19T11:18:51+08:00
draft: false
tags: ["kms"]
---
![2](https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Microsoft_logo_%282012%29.svg/565px-Microsoft_logo_%282012%29.svg.png)
***
KMS server可以部署在不同的客户端上，比如NAS，手机，树莓派，电视盒子之类的设备，方便局域网内网激活使用。

- ##### 很简单的几条命令，用树莓派做例子
    ```shell

    # 拉取docker镜像
    docker pull elarkasi/raspi-kms:latest
    # 运行
    docker run -d -p 1688:1688 --restart=unless-stopped elarkasi/raspi-kms:latest

    ```

- ##### 如需利用windows的自动激活功能，需要在路由器上加入以下配置
    ```ini

    # 替换hostname,domainname为现有设定
    srv-host=_vlmcs._tcp.domainname,hostname.domainname,1688,0,100

    ```
- ##### 不知道怎么使用KMS命令激活? [点这里][1]

[1]:https://blog.alex4u.win/post/kms/
