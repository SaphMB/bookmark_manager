require 'data_mapper'
require 'dm-postgres-adapter'

require_relative 'models/link'

#
<<<<<<< HEAD
# DataMapper.setup(:default, ENV['DATABASE_URL'] || 'postgres://localhost/bookmark_manager_development')
DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
=======
DataMapper.setup(:default, ENV['DATABASE_URL'] || 'postgres://localhost/bookmark_manager_development')
# DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}"))
>>>>>>> faacf177a0448be1d1a1e05e480cc47d6377becb

DataMapper.finalize
DataMapper.auto_upgrade!
