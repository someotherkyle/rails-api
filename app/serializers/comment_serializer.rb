class CommentSerializer < ActiveModel::Serializer
  belongs_to :post
  attributes :id, :post_id, :name, :content, :created_at, :updated_at
end
