require 'data_mapper'
require 'dm-postgres-adapter'
require 'bcrypt'

class User
  include DataMapper::Resource
  # include BCrypt
  attr_reader :password
  attr_accessor :password_confirmation

  property :id,            Serial
  property :name,          String
  property :email_address, String
  property :password_digest,      Text
  validates_confirmation_of :password, :message => 'Password do not match'

  def count
    User.count
  end
  
  def password=(new_password)
    @password = new_password
    self.password_digest = BCrypt::Password.create(new_password)
  end
end
