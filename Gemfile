source :rubygems

DM_URI = 'http://github.com/datamapper'
DM_VERSION = '~> 1.0'

def dm_gem(name)
  options = {}

  if ENV['DM_EDGE']
    options[:git] = "#{DM_URI}/#{name}.git"
  end

  gem(name,DM_VERSION,options)
end

case ENV['DM_ADAPTER']
when /mysql/i
  dm_gem 'dm-mysql-adapter'
when /postgre/i
  dm_gem 'dm-postgres-adapter'
else
  dm_gem 'dm-sqlite-adapter'
end

dm_gem 'dm-core'
dm_gem 'dm-migrations'
dm_gem 'dm-validations'
#dm_gem 'dm-constraints'
dm_gem 'dm-aggregates'
