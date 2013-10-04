h1 开源镜像站
h2 Debian
h3 收录架构
li i386
li amd64
li source
h3 收录版本
li wheezy
h3 更新时间
p 自动推送
h2 使用说明
p 编辑/etc/apt/sources.list文件, 在文件最前面添加以下条目(操作前请做好相应备份)
code deb http://mirrors.163.com/debian/ wheezy main non-free contrib
code deb http://mirrors.163.com/debian/ wheezy-proposed-updates main non-free contrib
code deb-src http://mirrors.163.com/debian/ wheezy main non-free contrib
code deb-src http://mirrors.thecmw.cn/debian/ wheezy-proposed-updates main non-free contrib
