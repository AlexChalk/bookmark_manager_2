ENV['RACK_ENV'] ||= 'development'
require "sinatra/base"
require_relative "data_mapper_setup"

  class BookmarkManager < Sinatra::Base
    enable :sessions

    get '/signup' do
      erb :signup
    end

    get '/' do
      redirect '/links'
    end

    post '/create-user' do
      user = User.create(email: params[:email], password: params[:password])
      session[:user_id] = user.id
      redirect '/links'
    end

    get '/links' do
      @link = Link.all
      @user = User.first(id: session[:user_id])
      erb :links
    end

    get '/links/new' do
      erb :new
    end

    post '/links' do
      @tags = params[:page_tag].split(", ")
      @tags.map! {|tag_name| Tag.create(name: tag_name) }
      @link = Link.create(title: params[:page_name], url: params[:page_url], tags: @tags)
      redirect '/links'
    end

    get '/tags/:name' do
      @tag = Tag.first(name: params[:name])
      @matching_links = @tag ? @tag.links : []
      erb :tag_results
    end

  end
