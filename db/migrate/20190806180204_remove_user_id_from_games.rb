class RemoveUserIdFromGames < ActiveRecord::Migration[5.2]
  def change
    remove_column :games, :user_id
    add_column :games, :player_name, :string
  end
end
