require 'sinatra'
require 'json'
require 'rest_client'

require './lib/menu'

before do
  content_type 'application/json'
end

get '/' do
  content_type 'html'
  dishes = Menu.dishes.all
  dishes.to_json
  erb :index
end

not_found do
  halt 404, { error: 'URL not found' }.to_json
end
