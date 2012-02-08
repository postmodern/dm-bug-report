source :rubygems

DM_URI = 'http://github.com/datamapper'
DM_VERSION = '1.3.0.beta'

def dm_gem(name)
  options = {}

  if ENV['DM_ROOT']
    options[:path] = "#{ENV['DM_ROOT']}/#{name}"
  elsif ENV['DM_EDGE']
    options[:git] = "#{DM_URI}/#{name}.git"
  end

  gem(name,DM_VERSION,options)
end

dm_gem 'dm-do-adapter'

case ENV['DM_ADAPTER']
when /mysql/i
  dm_gem 'dm-mysql-adapter'
when /postgre/i
  dm_gem 'dm-postgres-adapter'
else
  dm_gem 'dm-sqlite-adapter'
end

dm_gem 'dm-core'
dm_gem 'dm-types'
dm_gem 'dm-migrations'
dm_gem 'dm-validations'
#dm_gem 'dm-types'
#dm_gem 'dm-constraints'
#dm_gem 'dm-aggregates'
