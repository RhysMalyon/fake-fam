class CreateRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :roles do |t|
      t.string :role
      t.integer :price
      t.text :bio

      t.timestamps
    end
  end
end
