* 更改文件/文件夹权限
```
# chmod 777 filename
```
* 查看系统信息,cat和tac的区别
```
# cat /etc/issue 
# tac /etc/issue 
```
* 复制文件，将A复制到B
```
# cp a b
```
* 只看头几行，只看后几行
```
# head -n 20 /etc/issue
# tail -nf 20 /etc/issue
```
* 查找命令find <查找目录> <查找条件> <执行操纵>
```
# find . -name "my*" -ls
```
* 压缩和解压缩
```
# tar -zxvf filename
# tar -cxvf filename
```
