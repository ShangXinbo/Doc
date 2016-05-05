# node linux安装
* 安装在 /usr/bin/下
* wget 下载最新的安装包 ,这里是使用源码安装（Source Code），其他方式暂不讨论
```
#wget https://nodejs.org/dist/v4.4.3/node-v4.4.3.tar.gz
```
*解压安装包
```
#tar zxvf node-v4.4.3.tar.gz
```
* 检查python环境
```
#python --version
python 2.7.6  //安装node V4.4.3 required python 2.6 or 2.7
```
* 检查 g++ 版本
```
#g++ --version
g++ (Ubuntu 4.8.2-19ubuntu1) 4.8.2
```
* 进入node解压目录，检查安装环境是否具备
```
#./configure
```
* 如果可以，继续
```
#make
#make install





