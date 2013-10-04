#Load
require "./data.rb"
require "./printhtml.rb"

#Install mirrors.html
printheader("mirrors")
puts '<body class="tm-background">'
printnavbar("开源镜像站")
printarticle("rubygems")
puts '</div></div>'
printfooter
printmobilenavbar("开源镜像站")
puts '</body>'
puts '</html>'
