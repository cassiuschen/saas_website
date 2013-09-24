def printtable(element)
	case element
	when "T","t","ok","running","true"
		print '<td><i class="uk-icon-ok"></i></td>'
	when "F","f","false","wrong","problem"
		print '<td><i class="uk-icon-remove"></i></td>'
	when "-"
		print '<td></td>'
	else
		print '<td>' , element , '</td>'		
	end
end

filename = "dev.txt"
file = open(filename)
while text = file.gets 
	contain = %w(text)
	while input = contain.shift
		printtable(input)
	end
end

