class App < Sinatra::Base 
    def testinfo
	puts 'Now Testing!'
    end
    
    def get_time
        time = "= Time.now"
    end
end
