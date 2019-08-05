class RemoveMoveCountModeOngoingFromGames < ActiveRecord::Migration[5.2]
  def change
    remove_column :games, :move_count
    remove_column :games, :mode
    remove_column :games, :ongoing
  end
end
