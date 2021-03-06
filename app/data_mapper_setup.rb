require 'data_mapper'
require 'dm-postgres-adapter'
require_relative 'models/user'
require_relative 'models/listing'

# DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/makersbnb_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
