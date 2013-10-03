require "./data.rb"
puts "echo 'this is autoinstall by RubyScrip'"
#puts 'rm -v update.sh'
pages = ["index","ubuntu"]
pages.each {|page|
	puts "rm -v #{page}.html"	
}
puts "git pull"
pages.each {|page|
	puts "ruby #{page}.rb > #{$page_root[page]}.html"
}
puts "service nginx restart"

