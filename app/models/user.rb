class User < ActiveRecord::Base
  has_many :posts
  has_many :comments do
    def compressed_comments
      select(:id)
    end
  end
end
