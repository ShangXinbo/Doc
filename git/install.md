## os Ubuntu
### 首先我们选择升级apt-get，保证apt-get是最新，否则报错。
```
root@iZ28wct1234Z:/usr/local/lib# apt-get install git
………………
Get:1 http://mirrors.aliyun.com/ubuntu/ trusty/main liberror-perl all 0.17-1.1 [21.1 kB]
Err http://mirrors.aliyun.com/ubuntu/ trusty-updates/main git-man all 1:1.9.1-1ubuntu0.2
  404  Not Found [IP: 115.28.122.210 80]
Err http://mirrors.aliyun.com/ubuntu/ trusty-updates/main git amd64 1:1.9.1-1ubuntu0.2
  404  Not Found [IP: 115.28.122.210 80]
Fetched 21.1 kB in 0s (0 B/s)
E: Failed to fetch http://mirrors.aliyun.com/ubuntu/pool/main/g/git/git-man_1.9.1-1ubuntu0.2_all.deb  404  Not Found [IP: 115.28.122.210 80]

E: Failed to fetch http://mirrors.aliyun.com/ubuntu/pool/main/g/git/git_1.9.1-1ubuntu0.2_amd64.deb  404  Not Found [IP: 115.28.122.210 80]

E: Unable to fetch some archives, maybe run apt-get update or try with --fix-missing?
root@iZ28wct1234Z:/usr/local/lib# apt-get update
root@iZ28wct1234Z:/usr/local/lib# apt-get install git
root@iZ28wct1234Z:/usr/local/lib# git --version
git version 1.9.1
```
### 配置全局用户信息
```
git config --global user.email "314911714@qq.com"
git config --global user.name "shangxinbo"
