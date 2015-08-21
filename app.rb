require 'sinatra/base'

class App < Sinatra::Base

  configure :development do
    puts 'develop mode!'
  end

  configure :production do
    puts 'production mode!'
  end

  configure do
    puts 'all configure!'
  end

  get '/' do
    'hi'
  end

end
