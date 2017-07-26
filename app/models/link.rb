require 'data_mapper'
require 'dm-postgres-adapter'

class Link
  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :url, String

end
<<<<<<< HEAD
=======
#
# DataMapper.setup(:default, ENV['DATABASE_URL'] || 'postgres://localhost/bookmark_manager_development')
# # DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}"))
#
# DataMapper.finalize
# DataMapper.auto_upgrade!
>>>>>>> faacf177a0448be1d1a1e05e480cc47d6377becb
