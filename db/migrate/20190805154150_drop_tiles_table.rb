class DropTilesTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :tiles
  end
end
