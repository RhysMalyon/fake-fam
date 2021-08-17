class ChangeRoleToName < ActiveRecord::Migration[6.0]
  def change
    rename_column :roles, :role, :name
  end
end
