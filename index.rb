#Load
require "./data.rb"
require "./printhtml.rb"

#Install index.html

printheader("index")
puts '<body class="tm-background">'
printnavbar("index")
print_index_body
printfooter
printmobilenavbar("index")
puts '</body>'
puts '</html>'