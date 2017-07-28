require 'data_mapper'
require 'dm-postgres-adapter'

class User
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :email_address, String
  property :password, String

  def count
    User.count
  end
  
end
