ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require_relative 'data_mapper_setup.rb'

class Bookmark < Sinatra::Base

  get '/' do
    erb :login
  end

  post '/logged_in' do
    @name = params[:name]
    user = User.create(name: @name, email_address: params[:email_address], password: params[:password])
    redirect '/links'
  end

  get '/links' do
    @user = User.first
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/new'
  end

  post '/links' do
    link = Link.create(url: params[:url], title: params[:title])
    tags = params[:tags].split
    tags.each do |tag|
      link.tags << Tag.first_or_create(name: tag)
      link.save
    end
    redirect '/links'
  end

  get '/tags/:name' do
    @user = User.first
    tag = Tag.first(name: params[:name])
    @links = tag ? tag.links : []
    erb :'links/index'
  end

end
