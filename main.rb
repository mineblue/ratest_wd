require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'active_record'
require "rack/cache"
require 'json'
require "date"
require './helpers'



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
  Tests.create({
    :description => params[:description],
    :status => 0,
    :created => vdf,
    :updated => vdf,
    :result => '',
    :putdir => 'output/' + df,
    :target => ''
  })
  redirect '/result'
end

get %r{/result/detail/(\d+)} do |id|
  @test = Tests.find(id)
  erb :result_detail
end

get '/t' do
  r = '<style>* { font-family:"ＭＳ 明朝","monospace"; }</style><pre>'
  r += `ls`
  r += '</pre>'
  r
end

get '/*' do
  erb :n404
end
