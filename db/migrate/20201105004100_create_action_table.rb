class CreateActionTable < ActiveRecord::Migration[5.2]
  def change
    create_table :action_tables do |t|
      t.string :name
      t.string :description
    end
  end
end
