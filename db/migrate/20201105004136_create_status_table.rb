class CreateStatusTable < ActiveRecord::Migration[5.2]
  def change
    create_table :status_tables do |t|
      t.string :name
      t.integer :actionable_role_id
    end
  end
end
