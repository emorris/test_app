class Post < ActiveRecord::Base
  self.locking_column = :lock_version
  belongs_to :user, counter_cache: true, inverse_of: :posts
  has_many :comments
end
