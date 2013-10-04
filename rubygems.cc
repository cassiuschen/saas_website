h1 开源镜像站
hr
h2 RubyGems
h3 为什么有这个？
p 由于国内网络原因（你懂的），导致 rubygems.org 存放在 Amazon S3 上面的资源文件间歇性连接失败。所以你会与遇到 <code>gem install rack</code> 或 <code>bundle install</code> 的时候半天没有响应，具体可以用 <code>gem install rails -V</code> 来查看执行过程。
div-info 这是一个完整 rubygems.org 镜像，你可以用此代替官方版本，同步频率目前为15分钟一次以保证尽量与官方服务同步。
hr
h2 如何使用？
h3 Gem-Install
block
$ gem sources --remove https://rubygems.org/
$ gem sources -a http://rubygems.bdfzer.com/ 
$ gem sources -l
*** CURRENT SOURCES ***
http://rubygems.bdfzer.com
# 请确保只有 rubygems.bdfzer.com
$ gem install rails
endblock
h3 如果你是用 Bundle (Rails 项目)
block
source 'http://rubygems.bdfzer.com/'
gem 'rails', '3.2.12'
...
endblock
