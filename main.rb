require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'active_record'
require "rack/cache"
require 'json'
require "date"

ActiveRecord::Base.establish_connection(
  "adapter" => "sqlite3",
  "database" => "./tests.db"
)

class Tests < ActiveRecord::Base
end

helpers do
  include Rack::Utils
  alias_method :h, :escape_html
end

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
  @results = Tests.order('id desc').all
  erb :result
end

post '/result' do
  d = Time.now
  df1 = d.strftime("%Y/%m/%d %H:%M:%S")
  df2 = d.strftime("%Y%m%d%H%M%S")
  Tests.create({
    :description => params[:description],
    :status => 0,
    :created => df1,
    :updated => df1,
    :result => '',
    :putdir => 'output/' + df2,
    :target => ''
  })
  redirect '/result'
end

get %r{/result/detail/(\d+)} do |id|
  @test = Tests.find(id)
  erb :result_detail
end
