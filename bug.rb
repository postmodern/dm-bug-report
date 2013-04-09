#!/usr/bin/env ruby

require 'rubygems'

begin
  require 'bundler/setup'
rescue LoadError => e
  warn e.message
  warn "Run `gem install bundler` to install Bundler."
  exit e.status_code
end

require 'dm-core'
require 'dm-validations'
require 'dm-migrations'
#require 'dm-types'
#require 'dm-constraints'
#require 'dm-aggregates'
require 'pp'

class User

  include DataMapper::Resource

  property :id, Serial

  property :name, String, :required => true

  has 0..n, :posts

  has 0..n, :comments

end

class Post

  include DataMapper::Resource

  property :id, Serial

  property :title, String, :required => true

  property :body, Text

  has 0..n, :comments

  belongs_to :user

end

class Comment

  include DataMapper::Resource

  property :id, Serial

  property :body, Text

  belongs_to :post

  belongs_to :user

end

DataMapper::Logger.new(STDERR,:debug) if ENV['DEBUG']
DataMapper.setup(:default, 'sqlite:bug.db')
DataMapper.finalize.auto_migrate!

# ****************************** BUGGY CODE ******************************

# ****************************** BUGGY CODE ******************************
