class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :score
      t.boolean :ongoing
      t.integer :user_id
      t.string :mode
      t.integer :move_count

      t.timestamps
    end
  end
end
