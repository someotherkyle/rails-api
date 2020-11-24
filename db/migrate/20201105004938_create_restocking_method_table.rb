class CreateRestockingMethodTable < ActiveRecord::Migration[5.2]
  def change
    create_table :restocking_method_tables do |t|
      t.string :name
      t.string :description
    end
  end
end
