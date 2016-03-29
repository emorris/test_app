class Post < ActiveRecord::Base
  self.locking_column = :lock_version
  belongs_to :user, counter_cache: true
  has_many :comments
end
