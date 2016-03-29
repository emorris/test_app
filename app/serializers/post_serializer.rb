class PostSerializer < ActiveModel::Serializer
  attributes :id, :title
  #has_many :comments
  has_one :user
end
