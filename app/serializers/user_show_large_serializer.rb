class UserShowLargeSerializer < ActiveModel::Serializer
  attributes :id, :name, :comments_count, :posts_count
end
