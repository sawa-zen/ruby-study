require 'sinatra/base'
require 'active_record'
require_relative 'models/bookmark'

class Shiori < Sinatra::Base

  helpers do
    def h(text)
      Rack::Utils.escape_html(text)
    end
  end

  configure do
    db_path = File.expand_path(File.join(
      'root', '..', 'db', 'sqlite.db'
    ))
    ActiveRecord::Base.establish_connection(
      adapter: 'sqlite3',
      database: db_path
    )
  end

  get '/' do
    p Bookmark
    @bookmarks = Bookmark.all
    erb :index
  end

  get '/new' do
    erb :new
  end

  post '/create' do
    Bookmark.create!(url: params[:url])
    redirect '/'
  end

end
