class App < Sinatra::Base
    set :public_folder, File.dirname(__FILE__) + '/public'
    set :views, settings.root + '/views'
end
