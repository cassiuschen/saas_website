h1 开源镜像站
hr
h2 Ubuntu
h3 收录架构
li i386
li amd64
li source
h3 收录版本
li precise(12.04)
h3 更新时间
p 每天凌晨 1:00
hr
h2 使用说明
p 编辑/etc/apt/sources.list文件, 在文件最前面添加以下条目(操作前请做好相应备份)

code deb http://mirrors.thecmw.cn/ubuntu/ precise main restricted universe multiverse
code deb http://mirrors.thecmw.cn/ubuntu/ precise-security main restricted universe multiverse
code deb http://mirrors.thecmw.cn/ubuntu/ precise-updates main restricted universe multiverse
code deb http://mirrors.thecmw.cn/ubuntu/ precise-proposed main restricted universe multiverse
code deb http://mirrors.thecmw.cn/ubuntu/ precise-backports main restricted universe multiverse
code deb-src http://mirrors.thecmw.cn/ubuntu/ precise main restricted universe multiverse
code deb-src http://mirrors.thecmw.cn/ubuntu/ precise-security main restricted universe multiverse
code deb-src http://mirrors.thecmw.cn/ubuntu/ precise-updates main restricted universe multiverse
code deb-src http://mirrors.thecmw.cn/ubuntu/ precise-proposed main restricted universe multiverse
code deb-src http://mirrors.thecmw.cn/ubuntu/ precise-backports main restricted universe multiverse

