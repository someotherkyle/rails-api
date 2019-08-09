class ChangePostDatatype < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :content, :text, limit: 4294967295
  end
end
