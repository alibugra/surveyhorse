class CreateSurveyQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :survey_questions do |t|
      t.text :question
      t.integer :survey_id

      t.timestamps
    end
  end
end
