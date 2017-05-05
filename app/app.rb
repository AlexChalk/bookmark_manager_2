ENV['RACK_ENV'] ||= 'development'
require "sinatra/base"
require_relative "data_mapper_setup"

  class BookmarkManager < Sinatra::Base

    before { @links = Link.all } 

    get '/' do
      redirect '/links'
    end

    get '/links' do
      @link = Link.all
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
