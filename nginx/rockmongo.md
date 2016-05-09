#rockmongo install on Windows10

安装完mongodb后需要有一个视图化管理工具，我选择了rockmongo，一个类似于phpmyadmin的web程序。

下载最新版解压程序，由于使用的是php编写，所以需要搭建phpweb服务器，使用nginx1.8.1,php 5.6.20,这是需要给php安装一个mongodb的驱动扩展。

搜索后发现原来用的php_mongo.dll扩展已经不被建议使用了，根据官方引导使用php_mongodb.dll扩展，然而可能是因为有两个扩展的问题，php5.6版本
对应的两个新旧扩展都会出现问题，安装不成功，phpinfo显示不出mongodb

无论是64bit还是32bit,无论是nts版还是ts版都试过了，都装不上。后来我拿在原来wamp环境迁移过来的php5.6.16版本然后找旧版的php_mongo.dll对应
版本，之后可安装成功。

未知原因，很多人跟我有同样的情况，运行rockmongo时会报以32位什么什么的错误。这个需要更改rockmongo程序中入口文件中的
```
//ini_set("mongo.native_long", 1);
```
这一行代码即可。
