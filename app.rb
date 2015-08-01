require 'sinatra'
require 'json'
require 'rest_client'

get '/' do
  content_type :json
  { message: 'Hello World!' }.to_json
end
