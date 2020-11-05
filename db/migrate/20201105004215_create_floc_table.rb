class CreateFlocTable < ActiveRecord::Migration[5.2]
  def change
    create_table :floc_tables do |t|
      t.string :name
    end
  end
end
