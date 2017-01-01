class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.string :name
      t.integer :role_id

      t.timestamps
    end
  end
end
