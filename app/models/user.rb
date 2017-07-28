require 'data_mapper'
require 'dm-postgres-adapter'
# require 'bcrypt'

class User
  include DataMapper::Resource

  property :id,            Serial
  property :name,          String
  property :email_address, String
  property :password,      String

  def count
    User.count
  end

  # def password
  #   BCrypt::Password.create("my password")
  # end
end
