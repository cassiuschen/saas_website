class App < Sinatra::Base
  # Index Things
  get '/' do
    time = "= Time.now"
    slim time
  end

end
