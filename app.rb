require 'sinatra'
require 'sinatra/base'
require 'rdiscount'
require 'config/site_info'


class App < Sinatra::Base
	#Configration
    set :public_folder, File.dirname(__FILE__) + '/public'


    #Route Info
    get '/' do
    	slim :index , :layout => :application
    end

end
