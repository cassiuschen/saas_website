#Load
require "./data.rb"
require "./printhtml.rb"

#Install mirrors.html
printheader("mirrors")
puts '<body class="tm-background">'
printnavbar("mirrors")
printarticle("Ubuntu")
puts '</div></div>'
printfooter
printmobilenavbar("mirrors")
puts '</body>'
puts '</html>'
