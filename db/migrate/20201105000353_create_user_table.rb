class CreateUserTable < ActiveRecord::Migration[5.2]
  def change
    create_table :user_tables do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.integer :role_id
    end
  end
end
