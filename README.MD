# 快捷的 SSH 登录工具

### 简介
qk 是一个常用命令工具的集合，包含了一些非常实用的小工具，目前已经包含了两个非常有用的工具: qsh 和 qd。

1. qsh 是一个快捷登陆工具，可以记录ssh或者ftp等的登录信息，之后利用QSH只需要输入设置的登录名称，就会自动登录到服务器上，不需要每一次登录服务器都需要输入用户名和密码，方便了服务器的登录，可以方便的自动管理多个登录账号。qsh 目前支持一些命令:
    + create  创建一个登录账号
    + list    列出当前已有的所有的登录账号
    + edit    编辑一个已有的登录账号
    + connect 使用某一个账号登录
    + delete  删除已有的一个登录账号
    + help    显示帮助信息