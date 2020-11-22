class RenameSapTables < ActiveRecord::Migration[5.2]
  def change
    rename_table :equipment_tables, :equipments
    rename_table :floc_tables, :flocs
    rename_table :requests_tables, :sap_requests
    rename_table :restocking_method_tables, :restocking_methods
    rename_table :roles_tables, :roles 
    rename_table :status_tables, :statuses 
    rename_table :user_tables, :users 
  end
end
