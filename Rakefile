require_relative 'app/db'
require_relative 'app/models/bookmark'

desc 'bookmark to csv'
task :csv do |t|
  DB.connect(__dir__, ENV['RACK_ENV'] || 'development')

  # ActiveRecordのfind_eachメソッドを使って、
  # 一度に先見を取得するのではなく、
  # 1,000件(デフォルト)ずつ取得する
  Bookmark.find_each do |bookmark|
    puts bookmark.attributes
  end

end
