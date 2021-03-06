ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require 'bcrypt'
require_relative 'data_mapper_setup.rb'

class Bookmark < Sinatra::Base
enable :sessions
set :session_secret, 'super-secret'

  def current_user
    @current_user ||= User.get(session[:id])
  end

  get '/' do
    erb :login
  end

  post '/logged_in' do
    user = User.create(name: params[:name], email_address: params[:email_address], password: params[:password], password_confirmation: params[:password_confirmation])
    session[:id] = user.id
    redirect '/links' if params[:password_confirmation] == params[:password]
  end

  get '/links' do
    @user = current_user
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
