class CreateRequestsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :requests_tables do |t|
      t.integer :action_id
      t.integer :creating_user_id
      t.integer :last_modified_user
      t.integer :floc_id
      t.string :comments
      t.integer :status_id
    end
  end
end
