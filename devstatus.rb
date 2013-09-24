filename = dev.txt
file = open(filename)
while text = file.gets |
	contain = %w(text)
	printtable(contain.shift)
	
	
end

def printtable(element)
	case element
	when 'T'
		
	end
	if element == 'T'
		print '<td><i class="uk-icon-ok"></i><td>'
	elsif element == 'F'
		print '<td><i class="uk-icon-ok"></i><td>'
		
	end
	print '<td>',element,'<td>'
end