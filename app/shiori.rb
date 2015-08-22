require 'sinatra/base'
require 'active_record'
require_relative 'models/bookmark'

class Shiori < Sinatra::Base

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
    Bookmark.create!(url: 'html://sawa-zen.com')
    p Bookmark
    @bookmarks = Bookmark.all
    erb :index
  end
end
