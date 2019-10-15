require 'sinatra'
require "sinatra/reloader" if development?

set :bind, ENV['VCAP_APP_HOST'] || "0.0.0.0"
set :port, ENV['PORT'] || "4567"

def greeting
  ENV['GREETING'] || 'Howdy'
end

get '/' do
  "#{greeting}!"
end

get '/:name' do
  "#{greeting}, #{params[:name]}!"
end
