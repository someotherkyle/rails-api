class PostSerializer < ActiveModel::Serializer
  has_many :comments
  attributes :id, :title, :content, :created_at, :updated_at
end
