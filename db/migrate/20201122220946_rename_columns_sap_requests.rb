class RenameColumnsSapRequests < ActiveRecord::Migration[5.2]
  def change
    rename_column :sap_requests, :creating_user_id, :user_id
  end
end
