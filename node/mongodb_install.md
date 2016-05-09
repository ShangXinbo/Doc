# mongodb 安装配置

下载mongodb。远端服务器下载太慢，可在windows本地下载好然后上传到服务器
使用secureCrt登陆linux上传下载需要rz/sz命令,一般系统需要安装lrzsz这个程序
```
apt-get install lrzsz
```
执行rz 上传文件，我们把程序解压在/usr/local/lib/下,然后在/usr/local/bin/下建立软连接，因为全局环境变量$PATH包含该目录
```
#cd /usr/local/lib/
#rz
#tar zxvf mongodb-linux-x86_64-ubuntu1404-3.2.6
#mv mongodb-linux-x86_64-ubuntu1404-3.2.6 mongodb
#cd /usr/local/bin/
#ln -s ../lib/mongodb/bin/mongod mongod
#ln -s ../lib/mongodb/bin/mongo mongo
```
手动创建数据库存放目录
```
#cd /usr/local/lib/mongodb/
#mkdir data
#cd data
#mkdir db
```
设置开机自启动mongodb服务，
```
# cd /etc/init.d/
# vi rc.local 

mongod --dbpath=/usr/local/lib/mongodb/data/db --rest
…
```
mongodb默认是没有安全验证的，不需要用户登录即可连接数据库，这对于我是不安全的，所以我需要配置mongodb的权限验证。
```
#mongo
MongoDB shell version: 3.2.4
connecting to: test
> use admin
switched to db admin
> db.createUser({user:"xxx",pwd:"xxx",roles:[{role:"root",db:"admin"}]})
```
然后重新编辑/etc/init.d/rc.local 让mongod服务启动时开启权限验证
```
mongod --dbpath=/usr/local/lib/mongodb/data/db --auth --rest
```
用mongo_client链接时，需要指定数据库是admin，
```
mongo -u xxxx --authenticationDatabase admin -p xxxx
```
如果用的是rokomongo管理数据库需要改配置文件config.php, 不能指定mongo_db的值
```
//$MONGO["servers"][$i]["mongo_db"] = "";//default mongo db to connect, works only if mongo_auth=false
$MONGO["servers"][$i]["mongo_user"] = "xxxx";//mongo authentication user name, works only if mongo_auth=false
$MONGO["servers"][$i]["mongo_pass"] = "xxxx";//mongo authentication password, works only if mongo_auth=false
$MONGO["servers"][$i]["mongo_auth"] = true;//enable mongo authentication?
```
