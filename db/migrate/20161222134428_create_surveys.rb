class CreateSurveys < ActiveRecord::Migration[5.0]
  def change
    create_table :surveys do |t|
      t.string :title
      t.integer :user_id
      t.string :status
      t.string :is_published
      t.date :publish_date
      t.date :end_date

      t.timestamps
    end
  end
end
