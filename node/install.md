# Install on linux use source code

> 使用apt-get网上很多人不推荐，我不知道为什么，可能是怕版本陈旧，这里我们在官网找了另外两种方法，一种是用binaries包，不过我下载下来后没有可执行文件，后使用下面的源码编译方式安装。

确定安装目录/usr/local/bin/，这个目录一般是系统环境变量的指定目录（还有其他） 

下载最新的安装包（source code）,我比较喜欢用wget命令
```
# wget https://nodejs.org/dist/v4.4.3/node-v4.4.3.tar.gz
```

解压安装包

```
# tar zxvf node-v4.4.3.tar.gz
```

检查python环境，用于编译node

```
# python --version
python 2.7.6  //安装node V4.4.3 required python 2.6 or 2.7
```

检查 g++ 版本,用于编译node

```
# g++ --version 
g++ (Ubuntu 4.8.2-19ubuntu1) 4.8.2
```

进入node解压目录，检查安装环境是否具备

```
# ./configure
```

如果可以，执行以下命令编译，需要一些时间，我觉得还是挺长时间的。

```
# make
# make install
```
更改npm的库地址
npm config set registry http://registry.cnpmjs.org


