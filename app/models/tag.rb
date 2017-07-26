require 'data_mapper'
require 'dm-postgres-adapter'

class Tag
  include DataMapper::Resource
  has n, :links
  property :id, Serial
  property :name, String
end
