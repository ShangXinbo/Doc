
#rockmongo 在windows10上安装问题

再装mongodb的php驱动的时候出现问题
旧的驱动php_mongo.dll  已经不被建议使用了
新的驱动php_mongodb.dll 

使用最新的php5.6.20 64bit版
nts版 新旧驱动都试过了，都显示装不上
ts版  新旧驱动都试过了，都显示装不上
似乎出现了bug
尝试旧版本的5.4.x  同上

使用原先在wamp上安装的php 版本5.6.16，查看官网好像已经发布了一年多了
莫名奇妙装上了
安装rockmongo会报一个错 ，是首页有一行代码显示32位什么东西，后来注释了就好了
注释代码是
//ini_set("mongo.native_long", 1);


