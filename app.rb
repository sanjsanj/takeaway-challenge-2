require 'sinatra/base'
require './lib/order'

class Takeaway < Sinatra::Base
  get '/' do
    @menu = Menu.new
    erb :index
  end

  run! if app_file == $0
end
