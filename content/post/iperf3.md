---
title: "Iperf3"
date: 2020-04-19T17:14:27+08:00
draft: false
tags: ["network"]
---
### iperf官网 [点这里][1]

- ##### 服务端：
    ```shell

    #默认端口号5201
    #默认TCP链接
    #-p 指定端口号
    #-b 指定带宽
    #-u 指定UDP协议
    iperf3 -s

    ```
- ##### 客户端：
    ```shell

    #-i 输出间隔
    #-t 持续时间
    #-p 服务端端口号
    #-P 并发连接数
    iperf3 -c server-ip -i 10 -t 600

    ```

[1]:https://iperf.fr/



