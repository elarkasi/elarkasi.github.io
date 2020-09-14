---
title: "KMS 激活命令"
date: 2020-04-18T13:20:10+08:00
draft: false
tags: ["kms"]
---

![1](https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Microsoft_logo_%282012%29.svg/565px-Microsoft_logo_%282012%29.svg.png)

***

##### 快速跳转: [Windows](#windows-kms) | [Office](#office-kms) 
###### 备注： 需要管理员权限运行Powershell

#### Windows KMS
- ##### 查看系统版本
    ```powershell

    wmic os get caption

    ```
- ##### 设置kms服务器
    ```powershell

    slmgr /skms 192.168.0.1

    ```
- ##### 安装key | [ 需要Key? 点这里： [Windows][Windowskey] ]
    ```powershell

    slmgr /ipk xxxx-xxxx-xxxx-xxxx

    ```
- ##### 激活
    ```powershell

    slmgr /ato

    ```

#### Office KMS
- ##### 设置kms服务器
    ```powershell

    #32位
    cd c:\Program Files (x86)\Microsoft Office\Office16\
    #64位
    cd c:\Program Files\Microsoft Office\Office16\
    #运行
    cscript ospp.vbs /sethst:192.168.0.1

    ```
- ##### 安装key | [ 需要Key? 点这里：[Office2019/2016][Office2019] | [Office2013][Office2013] | [Office2010][Office2010] ]
    ```powershell

    cscript ospp.vbs /inpkey:xxxxx-xxxxx-xxxxx-xxxxx

    ```
- ##### 激活
    ```powershell

    cscript ospp.vbs /act
    
    ```

[Windowskey]:https://docs.microsoft.com/zh-cn/windows-server/get-started/kmsclientkeys "Windows Key"
[Office2019]:https://technet.microsoft.com/zh-cn/library/dn385360(v=office.16).aspx "Office 2091/2016 Key"
[Office2013]:https://technet.microsoft.com/ZH-CN/library/dn385360.aspx "Office 2013 Key"
[Office2010]:https://technet.microsoft.com/ZH-CN/library/ee624355(v=office.14).aspx "Office 2010 Key"