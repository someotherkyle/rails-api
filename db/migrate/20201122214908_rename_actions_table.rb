class RenameActionsTable < ActiveRecord::Migration[5.2]
  def change
    rename_table :action_tables, :actions
  end
end
