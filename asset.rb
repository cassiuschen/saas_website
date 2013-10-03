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


#Install mirrors.html
printheader("mirrors")
puts '<body class="tm-background">'
printnavbar("mirrors")

printfooter
printmobilenavbar("mirrors")
puts '</body>'
puts '</html>'


#Install dev.html
#contain = Array.new()
#open("dev.txt"){|file|
#	while text = file.gets 
#		contain = text.split()
#		while input = contain.shift
#			printtable(input)
#		end
#	end
#}
