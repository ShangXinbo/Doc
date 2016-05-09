@echo off
if "%1" == "h" goto begin 
mshta vbscript:createobject("wscript.shell").run("%~nx0 h",0)(window.close)&&exit 
:begin 
d:  
cd d:\php\ 
taskkill /f /FI "IMAGENAME eq php-cgi.exe"
php-cgi.exe -b 127.0.0.1:9000 -c d:/php/php.ini
cd d:\nginx-1.8.0\  
echo "nginx is starting on port 80" 
ipconfing /flushdns 
taskkill /f /FI "IMAGENAME eq nginx.exe"
start nginx.exe
mongod.exe --dbpath d:/mongodb/data/db/
exit