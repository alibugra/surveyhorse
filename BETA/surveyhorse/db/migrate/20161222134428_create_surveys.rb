class CreateSurveys < ActiveRecord::Migration[5.0]
  def change
    create_table :surveys do |t|
      t.string :title
      t.integer :user_id
      t.string :status

      t.timestamps
    end
  end
end
