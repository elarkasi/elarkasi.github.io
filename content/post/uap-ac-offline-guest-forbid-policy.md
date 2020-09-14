---
title: "关闭unifi AP未授权设备接入guest网络"
date: 2020-04-20T12:37:34+08:00
draft: false
tags: ["unifi"]
---
- ##### 修改UAP安全策略，在AC下线后禁止Guest登录
    ```shell

    # 查看当前UAP config.selfrun_guest_mode的配置
    # 默认配置下 config.selfrun_guest_mode = pass，AC下线后允许未授权客户端接入
    cat cfg/mgmt

    ``` 

- ##### 修改该配置
    ```shell

    # V5版本的AC controller配置文件路径
    # <unifi_base>/data/sites/sitename/config.properties
    # 如果没有找到该文件，可以新建
    echo "config.selfrun_guest_mode=off" > config.properties

    ```

- ##### 保存退出，在管理页面下发配置