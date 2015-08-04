require 'sinatra/base'
require './lib/order'

class Takeaway < Sinatra::Base
  enable :sessions

  get '/' do
    session[:menu] = Menu.new
    @menu = session[:menu]
    erb :index
  end

  run! if app_file == $0
end
