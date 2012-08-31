#!/usr/bin/env ruby

require 'rubygems'

begin
  require 'bundler'
rescue LoadError => e
  STDERR.puts e.message
  STDERR.puts "Run `gem install bundler` to install Bundler."
  exit e.status_code
end

begin
  Bundler.setup
rescue Bundler::BundlerError => e
  STDERR.puts e.message
  STDERR.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'dm-core'
require 'dm-types'
require 'dm-validations'
require 'dm-migrations'
require 'pp'

class User

  include DataMapper::Resource

  property :id, Serial

  property :name, String, :required => true

  property :gender, Enum[:undisclosed, :male, :female]

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

DataMapper.setup(:default, 'sqlite:bug.db')
DataMapper.finalize.auto_migrate!

# ****************************** BUGGY CODE ******************************

User.create(:name => 'bob', :gender => :male)
User.create(:name => 'alice', :gender => :female)

p User.get(1)
p User.get(2)

# ****************************** BUGGY CODE ******************************
