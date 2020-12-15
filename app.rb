require 'sinatra/base'
require_relative './lib/bookmark'

class BookMarkManager < Sinatra::Base
  set :session_secret, 'super secret'
  enable :sessions

  get '/' do
    'Bookmark Manager'
    # erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  run! if app_file == $0
end
