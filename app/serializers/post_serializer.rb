class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :comment_count
  def comment_count
   self.object.comments.count
  end
end
