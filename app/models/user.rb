class User < ActiveRecord::Base
  has_many :posts, inverse_of: :user
  has_many :comments do
    def compressed_comments
      select(:id)
    end
  end
end
