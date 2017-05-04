require "data_mapper"
require "sinatra/base"
require_relative "data_mapper_setup"

  class BookmarkManager < Sinatra::Base
    ENV['RACK_ENV'] ||= 'development'

    before { @links = Link.all; @tags = Tag.all } 

    get '/links' do
      @link = Link.all
      erb :links
    end

    get '/links/new' do
      erb :new
    end

    post '/links' do
      @tag = Tag.create(name: params[:page_tag])
      @link = Link.create(title: params[:page_name], url: params[:page_url], tags: [@tag])
      redirect '/links'
    end

    get '/tags/:name' do
      @tag = Tag.first(name: params[:name])
      @matching_links = @tag ? @tag.links : []
      erb :tag_results
    end

  end
