class CreateEquipmentTable < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment_tables do |t|
      t.integer :quantity_installed_in_floc
      t.string :equipment_description
      t.string :quote_filename
      t.integer :equipment_number
      t.integer :quote_line_number
      t.integer :max_quantity
      t.integer :reorder_quantity
      t.string :stock_reason
      t.integer :stock_method_id
      t.boolean :over_approval_limit
    end
  end
end
