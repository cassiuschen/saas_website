#Load
require "./data.rb"
require "./printhtml.rb"

#Install index.html

printheader
puts '<body>'

puts '</body>'



#Install dev.html
contain = Array.new()
open("dev.txt"){|file|
	while text = file.gets 
		contain = text.split()
		while input = contain.shift
			printtable(input)
		end
	end
}