require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'active_record'
require "rack/cache"
require 'json'

use Rack::Cache

before do
  #cache_control :public, :must_revalidate, :max_age => 30
end

get '/' do
  erb :index
end

get '/config' do
  erb :config
end

get '/execute' do
  erb :execute
end

get '/result' do
  erb :result
end

get '/result/detail/:id' do |id|
  erb :result_detail
end
