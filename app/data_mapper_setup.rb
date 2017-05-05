require 'data_mapper'
require 'dm-postgres-adapter'

require File.join(File.dirname(__FILE__), '..', 'models', 'link.rb')
require File.join(File.dirname(__FILE__), '..', 'models', 'tag.rb')
require File.join(File.dirname(__FILE__), '..', 'models', 'user.rb')

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
DataMapper.finalize
