class ChangePostDatatype < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :content, :text, limit: 999999999
  end
end
