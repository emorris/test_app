class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :created_at, :generated_field

  def generated_field
    Faker::Hipster.paragraph
  end
end
