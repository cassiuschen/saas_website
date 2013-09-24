def printtable(element)
	case element
	when "T","t","ok","running","true"
		puts '<td><i class="uk-icon-ok"></i></td>'
	when "F","f","false","wrong","problem"
		puts '<td><i class="uk-icon-remove"></i></td>'
	when "-"
		puts '<td></td>'
	else
		puts '<td>' , element , '</td>'		
	end
end

#filename = "dev.txt"
#file = open("dev.txt")
contain = Array.new()
open("dev.txt"){|file|
	while text = file.gets 
		contain = text.split()
		while input = contain.shift
			printtable(input)
		end
	end
}

#while text = file.gets 
#	contain = %w(text)
#	while input = contain.shift
#		print input,'-'
#		printtable(input)
#	end
#end
#file.close
