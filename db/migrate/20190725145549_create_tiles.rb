class CreateTiles < ActiveRecord::Migration[5.2]
  def change
    create_table :tiles do |t|
      t.integer :value
      t.integer :index
      t.integer :game_id

      t.timestamps
    end
  end
end
