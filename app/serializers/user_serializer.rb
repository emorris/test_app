class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
end


class UserShowLargeSerializer < ActiveModel::Serializer
  attributes :id, :name, :comment_count, :post_count

  def comment_count
      self.comments.size
  end

  def post_count
     self.posts.size
  end
end
