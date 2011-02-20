require 'dm-core'
require 'dm-validations'
require 'dm-migrations'

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

DataMapper.setup(:default, 'sqlite:bug.db')
DataMapper.auto_migrate!

# bug code here
